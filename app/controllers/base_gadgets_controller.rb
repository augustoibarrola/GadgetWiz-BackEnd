class BaseGadgetsController < ApplicationController
    def index
        @base_gadgets = BaseGadget.all 
        render json: @base_gadgets
    end 

    def create
        @base_gadget = BaseGadget.new(base_gadgets_params)
    
        if @base_gadget.save
          render json: @base_gadget, status: :created, location: @base_gadget
        else
          render json: @base_gadget.errors, status: :unprocessable_entity
        end
    end

      def update
        if @base_gadget.update(base_gadgets_params)
          render json: @base_gadget
        else
          render json: @base_gadget.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @base_gadget.destroy
      end

      private 
      def base_gadgets_params
        params.require(:base_gadget).permit(:content, :source, :image_url, :reporter, :topic, :review_rating)
      end

end
