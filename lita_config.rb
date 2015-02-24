Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Jarvis"
  config.robot.mention_name = "jarvis"
  config.robot.alias = "/"
  config.robot.log_level = :debug

  config.handlers.dyn.customer = "LifeCovenantChurch"
  config.handlers.dyn.username = "benhaan"
  config.handlers.dyn.password = "yaprLcRY6K4AZ"
  config.handlers.dyn.default_ttl = 3600

end