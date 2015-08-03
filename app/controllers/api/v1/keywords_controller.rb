module Api
  module V1
    class KeywordsController < ApplicationController
      respond_to :json

      def index
        respond_with Keyword.all
      end
    end
  end
end
