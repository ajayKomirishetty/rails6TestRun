class ProductController < ApplicationController

    # before_action :permit_params, only: :create

    # def permit_params
    #     binding.pry
    #     binding.pry
    #     params = params.permit(:name, :price, :description)
    # end

    def create
        params1 = params.permit(:name, :price, :description)
      begin
        Product.create(params1)
        redirect_to :action => "display_all"
      rescue => e 
        puts e
        redirect_to :action => "display_all"
      end
    end

   
    def update
      begin
        params1 = params.permit(:name, :price, :description,:id,:lock_version)
        @product = Product.find(params1[:id]).update_attributes(params1) 
        flash[:success] = "Product updated successfully"
        redirect_to :action => "display_all"
      rescue => e
        # errors.add "unfortunately you cant update"
        flash[:error] = "unfortunately you cant update"
        redirect_to :action => "show"
        puts e
      end
    end

    def show
        @product = Product.find(params[:id])
    end

    def display_all
      @products =  Product.all

    end
end