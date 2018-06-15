require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :isbn => "Isbn",
        :auther_id => "Auther",
        :image_path => "Image Path",
        :page => 2,
        :summary => "MyText"
      ),
      Book.create!(
        :title => "Title",
        :isbn => "Isbn",
        :auther_id => "Auther",
        :image_path => "Image Path",
        :page => 2,
        :summary => "MyText"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Isbn".to_s, :count => 2
    assert_select "tr>td", :text => "Auther".to_s, :count => 2
    assert_select "tr>td", :text => "Image Path".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
