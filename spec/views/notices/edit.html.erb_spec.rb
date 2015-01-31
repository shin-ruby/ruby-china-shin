require 'rails_helper'

RSpec.describe "notices/edit", :type => :view do
  before(:each) do
    @notice = assign(:notice, Notice.create!(
      :content => "MyText"
    ))
  end

  it "renders the edit notice form" do
    render

    assert_select "form[action=?][method=?]", notice_path(@notice), "post" do

      assert_select "textarea#notice_content[name=?]", "notice[content]"
    end
  end
end
