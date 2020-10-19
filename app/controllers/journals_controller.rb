class JournalsController < ApplicationController

    def index
        @journals = Journal.all 
        render json: @journals
    end 

    def create
        @journal = Journal.new(journal_params)
    
        if @journal.save
          render json: @journal, status: :created, location: @journal
        else
          render json: @journal.errors, status: :unprocessable_entity
        end
    end

      def update
        if @journal.update(journal_params)
          render json: @journal
        else
          render json: @journal.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @journal.destroy
      end

      private 
      def journal_params
        params.require(:journal).permit(:user_id, :title, :content)
      end
    


end
