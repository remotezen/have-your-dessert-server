require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

class Blog::App::UsersHelperTest < Test::Unit::TestCase
  context "Blog::App::UsersHelper" do
    setup do
      @helpers = Class.new
      @helpers.extend Blog::App::UsersHelper
    end

    should "return nil" do
      assert_equal nil, @helpers.foo
    end
  end
end
