module Capybara
  module Polyglot
    module Drivers
      module Default
        module JavascriptHelpers
          private

            def js_query(selector, *modifiers)
              js = "var els = document.querySelectorAll('#{selector}');"
              if modifiers.any?
                js << "for (var i = 0, l = els.length; i < l; i++) {"
                modifiers.each {|m| js << "els[i].#{m};" }
                js << "}"
              end
              js
            end

        end
      end
    end
  end
end
