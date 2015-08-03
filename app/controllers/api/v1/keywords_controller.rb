module Api
  module V1
    class KeywordsController < ApplicationController
      respond_to :json

      def keyword_params
        params.permit(:keywords)
      end

      def index
        respond_with Keyword.all
      end

      def new
        respond_with Keyword.new
      end

      def create
        @keyword = Keyword.new(keyword_params)


        if @keyword.save
          render json: {status: 'ok'}.to_json
        else
          respond_with { render json: @keyword.errors, status: :unprocessable_entity }
        end
      end

      def show
        respond_with Keyword.find(params[:id])
      end

    end
  end
end
