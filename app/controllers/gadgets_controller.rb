class GadgetsController < ApplicationController
  before_action :set_gadget, only: [:update, :destroy]
  
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
      def set_gadget
        @gadget = Gadget.find(params[:id])
      end

      def gadgets_params
        params.require(:gadget).permit(:content, :user_id, :icon_image, :content_type, :name)
      end
end
