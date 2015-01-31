require 'rails_helper'

RSpec.describe "notices/index", :type => :view do
  before(:each) do
    assign(:notices, [
      Notice.create!(
        :content => "MyText"
      ),
      Notice.create!(
        :content => "MyText"
      )
    ])
  end

  it "renders a list of notices" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
