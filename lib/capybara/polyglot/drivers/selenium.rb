module Capybara
  module Polyglot
    module Drivers
      module Selenium

        include Default

        def click_hidden(selector)
          page.execute_script js_query(selector, 'style.display = "block"')
          find(selector).click
        end

        def submit(selector)
          page.execute_script("$('#{selector}').submit()")
        end

        def confirm
          page.driver.browser.switch_to.alert.accept
        end

      end
    end
  end
end
