class ProductionsController < ApplicationController
  def index
    @products = Production.search(params[:query])
  end

  def search
    @products = Production.search(params[:query])
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  def autocomplete
    @products = Production.order(:name).where("name LIKE ?", "%#{params[:term]}%")
    respond_to do |format|
      format.html
      format.json { 
        render json: @products.map(&:name)
      }
    end
  end
end
