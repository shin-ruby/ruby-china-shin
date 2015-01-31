require 'rails_helper'

RSpec.describe "notices/new", :type => :view do
  before(:each) do
    assign(:notice, Notice.new(
      :content => "MyText"
    ))
  end

  it "renders new notice form" do
    render

    assert_select "form[action=?][method=?]", notices_path, "post" do

      assert_select "textarea#notice_content[name=?]", "notice[content]"
    end
  end
end
