module Capybara
  module Polyglot
    module Drivers
      module Webkit

        include Default

        def confirm
          page.driver.accept_js_confirms!
        end

      end
    end
  end
end
