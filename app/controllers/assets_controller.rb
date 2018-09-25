class AssetsController < ApplicationController
	def index
		@assets = Asset.all
	end

	def show
		@asset = Asset.find(params[:id])
	end

	def new
		
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
		
	end
end
