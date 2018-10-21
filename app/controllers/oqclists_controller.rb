class OqclistsController < ApplicationController
    before_action :set_oqclist, :only => [:show,:edit,:update,:destroy]
    
    def index
        @oqclists=Oqclist.all
    end
    
    def show
    end
    
    def new
        @oqclist=Oqclist.new
    end
    
    def create
        @oqclist=Oqclist.new(oqclist_params)
        if @oqclist.save
            redirect_to oqclist_path(@oqclist)
        else
            render :action => :new
        end
    end
    
    def edit
    end
    
    def update
        if @oqclist.update(oqclist_params)
            redirect_to root_path
        else
            render :action => :edit
        end
    end
    
    def destroy
        @oqclist.destroy
        redirect_to root_path
    end
    
    private
    def set_oqclist
        @oqclist=Oqclist.find(params[:id])
    end
    def oqclist_params
        params.require(:oqclist).permit(:lotno, :quantity, :product_id, :customer_id)
    end
end
