module Capybara
  module Polyglot
    module Drivers
      module Poltergeist

        include Default

        def confirm
        end

        def debug_session
          puts page.driver.network_traffic
          page.driver.debug
        end

        def submit(selector)
          page.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
