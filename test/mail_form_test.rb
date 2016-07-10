require 'test_helper'
require 'fixtures/sample_mail'

class MailFormTest < ActiveSupport::TestCase
  test 'sample mail has correct attributes' do
    sample = SampleMail.new
    sample.name = 'User'
    assert_equal 'User', sample.name
    sample.email = 'user@example.com'
    assert_equal 'user@example.com', sample.email
  end
end
