class FoldersController < ApplicationController

    def index
        @folders = Folder.all 
        render json: @folders
    end 

    def create
        @folder = Folder.new(folder_params)
    
        if @folder.save
          render json: @folder, status: :created, location: @folder
        else
          render json: @folder.errors, status: :unprocessable_entity
        end
    end

      def update
        if @folder.update(folder_params)
          render json: @folder
        else
          render json: @folder.errors, status: :unprocessable_entity
        end
      end
    
      def destroy
        @folder.destroy
      end

      private 
      def set_folder
        @folder = Folder.find(params[:id])
      end

      def folder_params
        params.require(:folder).permit(:content_type, :name, :icon_image)
      end
end
