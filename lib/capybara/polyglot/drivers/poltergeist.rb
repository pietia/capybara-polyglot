module Capybara
  module Polyglot
    module Drivers
      module Poltergeist

        include Default

        def confirm
        end

        def submit(selector)
          page.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
