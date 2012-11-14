require File.expand_path(File.join(File.dirname(__FILE__), "..", "test_helper"))

class PolyglotTest < Test::Unit::TestCase

  # TODO: tmp
  Capybara.default_driver = :selenium

  class FakeScope
    include Capybara::Polyglot::Helpers
  end

  def setup
    @scope = FakeScope.new
  end

  def test_selenium
    Capybara.default_driver = :selenium
    assert_respond_to(@scope, :confirm)
    assert_respond_to(@scope, :click_hidden)

    # TODO: changing driver
    # - driver can be changed on assetion
    # - http://ruby-doc.org/stdlib-1.9.2/libdoc/forwardable/rdoc/Forwardable.html
    # Capybara.default_driver = :selenium
  end


end
