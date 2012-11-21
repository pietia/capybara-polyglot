module Capybara
  module Polyglot
    module Drivers
      module Poltergeist

        include Default

        def confirm
        end

        def debug_session
          #puts page.driver.network_traffic
          stamp = Time.now.to_i
          page.driver.render "tmp/screenshot-#{stamp}.png", :full => true
          page.driver.debug
        end

        def submit(selector)
          page.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
