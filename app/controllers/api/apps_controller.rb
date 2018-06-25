class Api::AppsController < ApplicationController
 def index
   render json: App.all
 end

 def show
  render json: App.id
 end

 def create
   app = App.new(app_params)
   if app.save
     render json: app
   else
     render json: {errors: app.errors}, status: unprocessable_entity
   end
 end

 def update
   app = App.find(params[:id])
   app.update(complete: !app.complete)
   render json: app
 end

 def destroy
   App.find(params[:id]).destroy
   render json: { message: ‘App deleted’}
 end

 private
 def app_params
   params.require(:app).permit(name:, complete:)
 end
 
end