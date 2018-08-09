class ModuleSessionsController < ApplicationController
  before_action :set_module_session, only: [:show]

  # GET /module_sessions/1
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_module_session
    @module_session = ModuleSession.find(params[:id])
  end
end
