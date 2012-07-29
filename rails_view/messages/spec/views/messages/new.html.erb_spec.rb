require 'spec_helper'

describe 'messages/new.html.erb' do
  let(:message) { mock_model("Message").as_new_record.as_null_object }

  before (:each) { assign(:message, message) }

  it 'renders a form to create a message' do
    render
    rendered.should have_selector("form", method: "post", action: messages_path)
    rendered.should have_selector("#message_submit")
  end

  it 'renders a text field for the message title' do
    message.stub(title: "the title")
    render
    rendered.should have_selector("#message_title[value='the title']")
  end
end
