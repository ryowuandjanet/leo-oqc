class ProductsController < ApplicationController
    def new
        @product=Product.new
    end
    def create
        @product=Product.new(product_params)
        if @product.save
            redirect_to new_oqclist_path
        else
            render :action => :new
            
        end
    end
    
    private
    def product_params
        params.require(:product).permit(:model, :partno)
    end
end
