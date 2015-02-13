require "lita"
require "dyn-rb"
require "domain_name"

Lita.load_locales Dir[File.expand_path(
  File.join("..", "..", "locales", "*.yml"), __FILE__
)]

require "lita/handlers/dyn"

Lita::Handlers::Dyn.template_root File.expand_path(
  File.join("..", "..", "templates"),
 __FILE__
)
