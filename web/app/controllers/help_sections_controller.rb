class HelpSectionsController < ApplicationController
  before_action :set_help_section, only: [:show]

  def index
    @help_sections = HelpSection.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_help_section
    @help_section = HelpSection.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def help_section_params
    params.require(:help_section).permit(:title, :body, :slug, :next, :previous)
  end
end
