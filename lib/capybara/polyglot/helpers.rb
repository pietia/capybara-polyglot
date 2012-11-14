module Capybara
  module Polyglot
    module Helpers

      def self.included(mod)
        include_driver(mod)
      end

      def self.extended(mod)
        include_driver(mod)
      end

      private

        def self.include_driver(mod)
          if defined?(Capybara) && Capybara.respond_to?(:current_driver)
            driver      = Capybara.current_driver
            begin
              mod.send(:include, "Capybara::Polyglot::Drivers::#{driver.to_s.camelize}".constantize)
            rescue NameError
              puts "Driver: #{driver} not supported by capybara-polyglot"
            end
          else
            puts "Capybara not loaded"
          end
        end

    end
  end
end
