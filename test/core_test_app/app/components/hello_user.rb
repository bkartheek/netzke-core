class HelloUser < HelloWorld
  def configure(c)
    c.user = 'Max'
    super
    c.user = c.client_config[:user]
    c.title = "Configured with user #{c.user}"
  end

  endpoint :greet_the_world do |params,this|
    this.show_greeting("Hello #{config.user}!")
  end
end
