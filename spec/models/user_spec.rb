require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  context "accountを指定しているとき" do
    it "ユーザーが作られる" do
      user = create(:user)

      expect(user).to be_valid
    end
  end

  context "accountを指定していない" do
    it "エラーする" do
      user = build(:user, account:nil)
      user.valid?

      expect(user.errors.messages[:account]).to include("can't be blank")
    end
  end

  context "同じaccountのアカウントが存在する" do
    it "エラーする" do
      create(:user, account: "ajk")
      user = build(:user, account: "ajk")
      user.valid?

      expect(user.errors.messages[:account]).to include("has already been taken")
    end
  end
end
