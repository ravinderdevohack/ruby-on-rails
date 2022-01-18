require "test_helper"

class UserDetailMailerTest < ActionMailer::TestCase
  test "new user_detail email" do 
    user = user_details(:one)

    email = UserDetailMailer.with(user_detail: user).new_user_detail_email

    assert_emails 1 do 
      email.deliver_now
    end
    assert_equal ['ravinder@devohack.com'], email.from
    assert_equal ['satyam@devohack.com']], email.to
    assert_equal "Test Email!", email.subject
    assert_match user.name, email.html_part.body.encoded
    assert_match user.name, email.text_part.body.encoded 
  end
end
