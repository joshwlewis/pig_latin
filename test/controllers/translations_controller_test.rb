require 'test_helper'

describe TranslationsController do
  describe :index do
    before { Translation.create english: 'saddlebag' }
    before { get :index }
    it { must_respond_with(:success) }
    it { must_render_template(:index) }
    it { assigns(:translations).wont_be_nil }
  end

  describe :create do
    before { post :create, translation: { english: 'haz cheeseburger' } }
    it { request.flash.wont_be_nil }
    it { response.must_redirect_to :translations }
    it { Translation.count.must_equal 1 }
  end
end
