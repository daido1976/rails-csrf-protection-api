# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    render plain: 'created!'
  end

  def destroy
    render plain: 'destroyed!'
  end
end
