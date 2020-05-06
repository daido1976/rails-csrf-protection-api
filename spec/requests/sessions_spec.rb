# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Sessions', type: :request do
  describe 'POST /login' do
    it 'is 200 ok' do
      post login_path
      expect(response).to have_http_status(200)
    end

    it 'saves user_id to session' do
      post login_path
      expect(session[:user_id]).to eq('hoge_id')
    end

    it 'saves session' do
      post login_path
      delete logout_path
      expect(session[:user_id]).to eq('hoge_id')
    end
  end
end
