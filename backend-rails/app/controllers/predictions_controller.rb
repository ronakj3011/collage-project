require 'net/http'
require 'json'

class PredictionsController < ApplicationController
  

  def about_us
  end

  def new
  end

  def report_heart
    @prediction = flash[:prediction]  # available after redirect
  end

  def create
    user_data = {
      age: params[:age].to_i,
      sex: params[:sex].to_i,
      cp: params[:cp].to_i,
      trestbps: params[:trestbps].to_i,
      chol: params[:chol].to_i,
      fbs: params[:fbs].to_i,
      restecg: params[:restecg].to_i,
      thalach: params[:thalach].to_i,
      exang: params[:exang].to_i,
      oldpeak: params[:oldpeak].to_f,
      slope: params[:slope].to_i,
      ca: params[:ca].to_i,
      thal: params[:thal].to_i
    }
    current_user.user_data.create(user_data)
    uri = URI("http://python-service:5000/predict")
    response = Net::HTTP.post(uri, user_data.to_json, "Content-Type" => "application/json")
    result = JSON.parse(response.body)

    @prediction = result["message"]
    respond_to do |format|
      format.html do
        flash[:prediction] = @prediction
        redirect_to report_heart_predictions_path, notice: "Prediction generated successfully."
      end
      format.json { render json: { prediction: @prediction } }
    end
  end
end
