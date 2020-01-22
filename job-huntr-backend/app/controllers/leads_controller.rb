class LeadsController < ApplicationController
    skip_before_action :authorized
    
    def index 
        leads = Lead.all 
        render json: leads
    end

    def create 
        @new = Lead.create(lead_params)
        puts @new
    end
    
    private 

    def lead_params
        params.require(:lead).permit(:user_id, :title, :company, :location, :status, :description)
    end

end