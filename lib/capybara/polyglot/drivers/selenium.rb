module Capybara
  module Polyglot
    module Drivers
      module Selenium

        include Default

        def click_hidden(selector)
          page.execute_script("$('#{selector}').click();")
        end

        def confirm
          page.driver.browser.switch_to.alert.accept
        end

        def submit(selector)
          page.driver.browser.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
