module Capybara
  module Polyglot
    module Drivers
      module Default

        def click_hidden(selector)
          find(selector, :visible => false).click
        end

      end
    end
  end
end
