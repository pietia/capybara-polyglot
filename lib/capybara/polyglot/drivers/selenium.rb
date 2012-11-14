module Capybara
  module Polyglot
    module Drivers
      module Selenium

        def click_hidden(selector)
          page.execute_script("$('#{selector}').trigger('mouseenter');")
          page.execute_script("$('#{selector}').click();")
        end

        def confirm
          page.driver.browser.switch_to.alert.accept
          sleep 1
        end

      end
    end
  end
end
