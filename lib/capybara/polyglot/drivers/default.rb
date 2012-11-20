module Capybara
  module Polyglot
    module Drivers
      module Default

        def click_hidden(selector)
          page.execute_script("$('#{selector}').trigger('mouseenter');")
          page.execute_script("$('#{selector}').click();")
        end

        def submit(selector)
          page.driver.browser.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
