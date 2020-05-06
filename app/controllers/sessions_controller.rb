# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    Rails.logger.info("session[:user_id] => #{session[:user_id]}")
    session[:user_id] = 'hoge_id'
    render json: { data: 'created!' }
  end

  def destroy
    render json: { data: 'destroyed!' }
  end
end
