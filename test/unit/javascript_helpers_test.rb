require File.expand_path(File.join(File.dirname(__FILE__), "..", "test_helper"))

class JavascriptHelpersTest < Test::Unit::TestCase

  class FakeScope
    include Capybara::Polyglot::Drivers::Default::JavascriptHelpers
  end

  def setup
    @scope = FakeScope.new
  end

  def test_js_query_with_single_modifer
    assert_equal @scope.send(:js_query, "#foo", "style.display = 'block'"),
      "var els = document.querySelectorAll('#foo');for (var i = 0, l = els.length; i < l; i++) {els[i].style.display = 'block';}"
  end

  def test_js_query_with_multiple_modifiers
    assert_equal @scope.send(:js_query, "#foo", "style.display = 'block'", "click()"),
      "var els = document.querySelectorAll('#foo');for (var i = 0, l = els.length; i < l; i++) {els[i].style.display = 'block';els[i].click();}"
  end

end

