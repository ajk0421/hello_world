require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    subject {get(users_path)}
    before do
      create_list(:user, 3)
    end
    it "ユーザ一覧が取得出来る" do
      subject
      binding.pry
    end
  end

  describe "GET /users/:id" do
    it "任意のユーザーの値を取得出来る" do
    end
  end

  describe "POST /users" do
    it "ユーザーのレコードが作成される" do
    end
  end

  describe "PUT /users/:id" do
    it "任意のユーザーのレコードを更新出来る" do
    end
  end

  describe "DELETE /users/:id" do
    it "任意のユーザーのレコードを削除出来る" do
    end
  end
end
