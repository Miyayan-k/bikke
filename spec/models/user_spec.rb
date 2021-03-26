require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe "ユーザー新規登録" do
    context '新規登録できる時' do
      it 'nickname, email, password全てが入力されていれば登録できる' do
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが6文字以上、英数混合かつ同じであれば登録できる' do
        @user.password = 'abcdefg1234'
        @user.password_confirmation = @user.password
        expect(@user).to be_valid
      end
      it 'emailに@マークがあれば登録できる' do
        @user.email = 'test@test.com'
        expect(@user).to be_valid
      end
    end

    context '新規登録できない時' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('ニックネームが入力されていません。')
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('メールアドレスが入力されていません。')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードが入力されていません。')
      end
      it 'password_confirmationが空では登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワード(確認)が内容とあっていません。')
      end
      it 'emailがすでに存在していれば登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('メールアドレスは既に使用されています。')
      end
      it 'passwordが英数混合でなければ登録できない' do
        @user.password = 'qwerty'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードには英字と数字の両方を含めて設定してください')
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'qwert'
        @user.valid?
        expect(@user.errors.full_messages).to include('パスワードは6文字以上に設定して下さい。')
      end
    end
  end
end
