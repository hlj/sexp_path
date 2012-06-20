require 'rubygems'
require 'sexp_processor'

module SexpPath
  
  # SexpPath Matchers are used to build SexpPath queries.
  #
  # See also: SexpQueryBuilder
  module Matcher  
  end
end

sexp_path_root = File.dirname(__FILE__)+'/sexp_path/'
%w[
  traverse 
  sexp_query_builder
  sexp_result
  sexp_collection
    
  matcher/base
  matcher/any
  matcher/all
  matcher/not
  matcher/child
  matcher/block
  matcher/atom
  matcher/pattern
  matcher/type
  matcher/wild
  matcher/include
  matcher/sibling
  
].each do |path|
  require sexp_path_root+path
end

# Pattern building helper, see SexpQueryBuilder
def Q?(&block)
  SexpPath::SexpQueryBuilder.do(&block)
end

# SexpPath extends Sexp with Traverse.
# This adds support for searching S-Expressions
class Sexp
  include SexpPath::Traverse
  
  # Extends Sexp to allow any Sexp to be used as a SexpPath matcher
  def satisfy?(o, data={})
    return false unless o.is_a? Sexp
    # if last sexp is wild(), ignore length difference
    unless length == o.length
      target ,source = o, self
      target ,source = self, o if self.is_a?(SexpPath::Matcher::Base) 
      if target.last.is_a?(SexpPath::Matcher::Wild)
        if target.length > source.length
          target.pop while target.last.is_a?(SexpPath::Matcher::Wild) && target.length > source.length
          target << SexpPath::Matcher::Wild.new  unless target.last.is_a?(SexpPath::Matcher::Wild)
        else
         target << SexpPath::Matcher::Wild.new while  target.length < source.length
       end
     end
    end
    return false unless length == o.length
    
    each_with_index{|c,i| return false unless c.is_a?(Sexp) ? c.satisfy?( o[i], data ) : c == o[i] }

    capture_match(o, data)
  end
end