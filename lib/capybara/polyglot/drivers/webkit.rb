module Capybara
  module Polyglot
    module Drivers
      module Webkit

        def click_hidden(selector)
          page.execute_script("$('#{selector}').trigger('mouseenter');")
          page.execute_script("$('#{selector}').click();")
        end

        def confirm
          page.evaluate_script "window.original_confirm_function = window.confirm"
          page.evaluate_script "window.confirm = function(msg) { return true; }"
          yield if block_given?
        ensure
          page.evaluate_script "window.confirm = window.original_confirm_function"
        end

      end
    end
  end
end
