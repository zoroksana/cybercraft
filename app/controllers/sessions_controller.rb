class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def import
    begin
      Session.import(params[:file])
      redirect_to root_url, notice: "Sessions imported."
    rescue
      redirect_to root_url, notice: "Invalid CSV file format."
    end
  end
end

