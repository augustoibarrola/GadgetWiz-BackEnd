class GadgetsController < ApplicationController
    def index
        @gadgets = Gadget.all 
        render json: @gadgets
    end 

    def create
        @gadget = Gadget.new(gadgets_params)
    
        if @gadget.save
          render json: @gadget, status: :created, location: @gadget
        else
          render json: @gadget.errors, status: :unprocessable_entity
        end
      end

      def update
        if @gadget.update(gadgets_params)
          render json: @gadget
        else
          render json: @gadget.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @gadget.destroy
      end

      private 
      def gadgets_params
        params.require(:gadget).permit(:content, :source, :image_url, :reporter, :topic, :review_rating)
      end
end
