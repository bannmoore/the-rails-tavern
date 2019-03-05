class CharactersController < ApplicationController
  def new
  end

  def create
    render plain: params[:character].inspect
  end
end
