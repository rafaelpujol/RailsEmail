require 'test_helper'

class MailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save mail without user" do
    mail = Mail.new
    assert_not mail.save
  end



end
