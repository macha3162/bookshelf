require 'rails_helper'

RSpec.describe "loans/new", type: :view do
  before(:each) do
    assign(:loan, Loan.new(
      :user_id => 1,
      :book_id => 1
    ))
  end

  it "renders new loan form" do
    render

    assert_select "form[action=?][method=?]", loans_path, "post" do

      assert_select "input[name=?]", "loan[user_id]"

      assert_select "input[name=?]", "loan[book_id]"
    end
  end
end
