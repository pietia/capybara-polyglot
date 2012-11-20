module Capybara
  module Polyglot
    module Drivers
      module Selenium

        include Default

        def confirm
          page.driver.browser.switch_to.alert.accept
        end

      end
    end
  end
end
