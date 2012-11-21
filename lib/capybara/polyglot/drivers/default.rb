module Capybara
  module Polyglot
    module Drivers
      module Default

        def click_hidden(selector)
          find(selector, :visible => false).click
        end

        def debug_session
          puts page.inspect
        end

      end
    end
  end
end
