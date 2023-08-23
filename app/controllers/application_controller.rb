class ApplicationController < ActionController::Base
  def page1; end

  def page2; end

  def page3
    redirect_to page2_path, status: :see_other
  end

  def page4; end

  def programming_languages
    @programming_languages = ProgrammingLanguage.all.reverse_order
    @programming_language = ProgrammingLanguage.new
  end

  def create_programming_language
     @programming_language = ProgrammingLanguage.new(programming_language_params)
     @programming_language.save!
  end

  private

    def programming_language_params
      params.require(:programming_language).permit(:name, :release_date)
    end
end
