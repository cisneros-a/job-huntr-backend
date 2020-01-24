class LeadsController < ApplicationController
    skip_before_action :authorized
    
    def index 
        leads = Lead.all 
        render json: leads
    end

    def show
        lead = Lead.find(params[:id])
        render json: lead
      end 

    def create 
        @new = Lead.create(lead_params)
        puts @new
    end

    def update
        lead = Lead.find(params[:id])
        lead.update(lead_params)
      end
      
    
    private 

    def lead_params
        params.require(:lead).permit(:user_id, :title, :company, :location, :status, :description)
    end

end