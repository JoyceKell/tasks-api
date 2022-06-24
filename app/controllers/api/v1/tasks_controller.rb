module Api
	module V1
		class TasksController < ApplicationController

            def index
				tasks = Task.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'tasks carregadas', data:tasks},status: :ok
			end

			def show
				task = Task.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded task', data:task},status: :ok
			end
		end
	end
end