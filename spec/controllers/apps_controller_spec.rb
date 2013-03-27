require 'spec_helper'

describe AppsController do
  fixtures :apps
  describe 'responding to GET index' do
    it 'should response.should be_success' do
      get :index 
      response.should be_success
    end
  end

  describe 'responding to GET show' do
    it 'should response.should be_success' do
      get :show, :id => 1
      response.should be_success
    end
  end

  describe 'responding to GET new' do
    it "should return 401 Not Authenticated" do
      get :new
      response.response_code.should == 401
    end
  end
end
