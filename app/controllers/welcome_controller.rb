# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    path = "#{Rails.public_path}/index.html"
    render file: path
  end
end
