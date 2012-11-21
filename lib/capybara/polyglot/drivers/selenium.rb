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

      end
    end
  end
end
