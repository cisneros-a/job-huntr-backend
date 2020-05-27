class LeadsController < ApplicationController
    skip_before_action :authorized
    
    def index 
        leads = Lead.all 
        render json: leads
    end
    
     def myleads
        leads = Lead.all
        havent_heard_leads = leads.select{|lead| lead.status == "Haven't Heard Back"} 
        heard_leads = leads.select{|lead| lead.status == "Heard Back"} 
        interviewed_leads = leads.select{|lead| lead.status == "Interviewed"} 
        

        render json: {heardBack: heard_leads, haventHeardBack: havent_heard_leads, interviewed: interviewed_leads}
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
