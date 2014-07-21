require 'open-uri'

 class ThLogsController < ApplicationController

	skip_before_filter  :verify_authenticity_token
	
	def index
		@thlogs = ThLog.all
		render :json => {:THLogs => @thlogs}
	end

	def show
	end

	def edit
	end

	def create
		@thlog = ThLog.new(thlog_params)

		respond_to do |format|
		  if @thlog.save
		    format.json { render json: @thlog, status: :created }
		  else
		    format.json { render json: @thlog.errors, status: :unprocessable_entity }
		  end
		end
	end

	private

	# Never trust parameters from the scary internet, only allow the white list through.
	def thlog_params
	  params.require(:thlog).permit!
	end
end
