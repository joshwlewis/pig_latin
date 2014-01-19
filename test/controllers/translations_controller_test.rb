require 'test_helper'

describe TranslationsController do
  describe :index do
    before { Translation.create english: 'saddlebag' }
    before { get :index }
    it { assert_response :success }
    it { assert_template :index }
    it { assigns(:translations).wont_be_nil }
    it { assigns(:translation).must_be_instance_of Translation }
  end

  describe :create do
    before { post :create, translation: { english: 'haz cheeseburger' } }
    it { request.flash.wont_be_nil }
    it { assert_redirected_to :translations }
    it { Translation.count.must_equal 1 }
  end
end
