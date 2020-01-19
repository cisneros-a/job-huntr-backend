class NotesController < ApplicationController
    def index 
        notes = Note.all 
        render json: notes
    end

    def create 
        @new = Note.create(note_params)
    end

    private

    def note_params
        params.require(:note).permit(:content, :lead_id)
    end    

end
