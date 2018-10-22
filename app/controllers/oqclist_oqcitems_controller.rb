class OqclistOqcitemsController < ApplicationController
    before_action :set_oqclist
    
    def index
        @oqcitems=@oqclist.oqcitems
        @page_title=@oqclist.product.model
    end
    
    private
    def set_oqclist
        @oqclist=Oqclist.find(params[:oqclist_id])
    end
end
