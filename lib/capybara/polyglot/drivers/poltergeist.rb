module Capybara
  module Polyglot
    module Drivers
      module Poltergeist

        include Default

        def click_hidden(selector)
          page.execute_script js_query(selector, 'style.display = "block"')
          find(selector).click
        end

        def debug_session
          file_name = "#{Time.now.to_i}_#{example.description}.png".downcase.gsub(/\s+/,"_")
          page.driver.render "tmp/screenshot_#{file_name}.png", :full => true
        end

        def submit(selector)
          page.execute_script("$('#{selector}').submit()")
        end

      end
    end
  end
end
