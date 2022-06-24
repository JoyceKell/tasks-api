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

			def create
				task = Task.new(task_parameters)
				if task.save
					render json: {status: 'SUCCESS', message:'Saved task', data:task},status: :ok
				else
					render json: {status: 'ERROR', message:'Articles not saved', data:task.erros},status: :unprocessable_entity
				end
			end

			private
			def task_parameters
				params.permit(:name, :url_image, :status, :description)
			end
		end
	end
end