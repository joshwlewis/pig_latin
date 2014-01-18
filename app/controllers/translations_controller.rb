class TranslationsController < ApplicationController
  def index
    @translation = Translation.new
    @translations = Translation.order("created_at DESC").limit(100)
  end

  def create
    @translation = Translation.new(translation_params)
    if @translation.save
      flash.notice = "Successfully translated: " + @translation.english + ' <-> ' + @translation.pig_latin
    else
      flash.alert = "Translation failed"
    end
    redirect_to :translations
  end

  private
  def translation_params
    params.require(:translation).permit(:english, :pig_latin)
  end
end
