# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    render json: { data: 'created!' }
  end

  def destroy
    render json: { data: 'destroyed!' }
  end
end
