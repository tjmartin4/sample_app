require 'spec_helper'

describe "Users" do

  describe "signup" do
    
    describe "failrue" do
      
      it "should not make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",           :with => ""
          fill_in "Email",          :with => ""
          fill_in "Password",       :with => ""
          fill_in "Confirmation",   :with => ""
          click_button
          response.should render_template('users/new')
          response.should have_selector("div#error_explanation")
        end.should_not change(User, :count)
      end
    end
    
    describe "success" do
      
      it "should make a new user" do
        lambda do
          visit signup_path
          fill_in "Name",           :with => "Jim Martin"
          fill_in "Email",          :with => "jim@jimandashley.com"
          fill_in "Password",       :with => "tobydog"
          fill_in "Confirmation",   :with => "tobydog"
          click_button
          response.should render_template('users/new')
          response.should have_selector("div#error_explanation")
        end.should change(User, :count).by(1)
      end
      
    end
  end
end
