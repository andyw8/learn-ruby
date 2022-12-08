require "test_helper"

class HashKeysTest < ActiveSupport::TestCase
  test "symbols" do
    a = {foo: "bar"}
    b = {"foo": "bar"} # rubocop:disable Lint/SymbolConversion
    c = {"foo" => "bar"}

    assert_equal [:foo], a.keys
    assert_equal [:foo], b.keys
    assert_equal ["foo"], c.keys
  end
end
