require 'spec_helper'

describe BookmarksController do

  def valid_attributes
    {}
  end

  describe "GET 'show'" do
    it "assigns the requested bookmark as @bookmark" do
      
      bookmark = Bookmark.create! valid_attributes
      get :show, :user_id => "1", :id => bookmark.id
      assigns(:bookmark).should eq(bookmark)
    end
  end
  
  describe "POST create" do
    describe "with valid params" do
      it "creates a new Bookmark" do
        expect {
          post :create, :bookmark => valid_attributes
        }.to change(Bookmark, :count).by(1)
      end

      it "assigns a newly created bookmark as @bookmark" do
        post :create, :bookmark => valid_attributes
        assigns(:bookmark).should be_a(Bookmark)
        assigns(:bookmark).should be_persisted
      end

      it "redirects to the created bookmark" do
        post :create, :bookmark => valid_attributes
        response.should redirect_to(Bookmark.last)
      end
    end
    describe "with invalid params" do
      it "assigns a newly created but unsaved bookmark as @bookmark" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bookmark.any_instance.stub(:save).and_return(false)
        post :create, :bookmark => {}
        assigns(:bookmark).should be_a_new(Bookmark)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bookmark.any_instance.stub(:save).and_return(false)
        post :create, :bookmark => {}
        response.should render_template("new")
      end
    end
  end
end
