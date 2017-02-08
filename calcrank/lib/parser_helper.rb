class ParserHelper
  
  private_class_method :new

  ###
  # Parse and return an instance from the refereced class
  #
  # - ParserHelper::Player(arguments)
  # - ParserHelper::User(arguments)
  #
  # It will generate the following code
  #
  # - Player.new PlayerParser.execute(*arguments)
  # - User.new UserParser.execute(*arguments)
  ###
  def self.method_missing(method, *arguments, &block)
    
    klass, parser  = method, "#{method}Parser"
    const_get(klass).new const_get(parser).execute(*arguments) rescue super
  end
end
