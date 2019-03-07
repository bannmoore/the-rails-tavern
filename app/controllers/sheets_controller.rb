class SheetsController < ApplicationController
  def create
    @character = Character.find(params[:character_id])
    @sheet = @character.sheets.create(sheet_params)
    redirect_to character_path(@character)
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
