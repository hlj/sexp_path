# See SexpQueryBuilder.any
class SexpPath::Matcher::Any < SexpPath::Matcher::Base
  attr_reader :options
  
  # Create an Any matcher which will match any of the +options+.
  def initialize(*options)
    @options = options
  end

  # Satisfied when any sub expressions match +o+
  def satisfy?(o, data={})
    return nil unless options.any?{|exp| exp.is_a?(Sexp) ? exp.satisfy?(o, data) : exp == o}
  
    capture_match o, data
  end
  
  def inspect
    options.map{|o| o.inspect}.join(' | ')
  end
end