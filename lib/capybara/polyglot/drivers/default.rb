module Capybara
  module Polyglot
    module Drivers
      module Default

        def click_hidden(selector)
          find(selector, :visible => false).click
        end

        def debug
          puts page.inspect
        end

      end
    end
  end
end
