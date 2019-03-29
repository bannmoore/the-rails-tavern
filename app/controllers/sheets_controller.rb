class SheetsController < ApplicationController
  http_basic_authenticate_with name: 'bannmoore', password: 'secret', only: :destroy

  def show
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.find(params[:id])
  end

  def new
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.new
  end

  def edit
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.find(params[:id])
  end

  def create
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.create(sheet_params)
    redirect_to character_path(@character)
  end

  def update
    @character = Character.find(params[:id])
    @sheet = @character.sheets.find(params[:id])

    if @sheet.update(sheet_params)
      redirect_to character_sheet_path(@sheet)
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.find(params[:id])
    @sheet.destroy
    redirect_to character_path(@character)
  end

  private

  def sheet_params
    params.require(:sheet).permit(:level)
  end
end
