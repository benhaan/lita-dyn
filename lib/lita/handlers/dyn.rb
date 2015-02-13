module Lita
  module Handlers
    class Dyn < Handler

      config :customer, required: true, type: String
      config :username, required: true, type: String
      config :password, required: true, type: String

      def initialize(robot)
        super
        @client = dyn_client
      end

      route(/dyn\s+set\s+(.*)\s+(a|A|cname|CNAME|mx|MX|txt|TXT)\s+(.*)/, :set_record, command: true, restrict_to: nil, help: {"dyn set <record> <type> <value>" => "Sets record to provided type and value"})

      def set_record(response)
        domain = response.matches[0][0]
        record_type = response.matches[0][1]
        record_value = response.matches[0][2]

        @client.zone = get_root_domain(domain)

        begin
          @client.send(record_type.downcase).fqdn(domain).ttl(3600).address(record_value).save(true)
        rescue ::Dyn::Exceptions::RequestFailed
          @client.send(record_type.downcase).fqdn(domain).ttl(3600).address(record_value).save(false)
        end

        if @client.zone.publish
          response.reply "The record #{domain} has been created/updated with a value of #{record_value}."
        else
          response.reply "There was an error while trying to create/update record. Please try again."
        end
      end

      private

        def dyn_client
          ::Dyn::Traffic::Client.new(config.customer, config.username, config.password)
        end

        def get_root_domain(record)
          return DomainName(record).domain
        end


    end

    Lita.register_handler(Dyn)
  end
end
