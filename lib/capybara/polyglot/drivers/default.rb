module Capybara
  module Polyglot
    module Drivers
      module Default

        def click_hidden(selector)
          find(selector, :visible => false).click
        end

        def submit(selector)
          page.driver.browser.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
