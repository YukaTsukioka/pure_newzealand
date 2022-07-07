require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nickname、email、email_confirmation,passwordとpassword_confirmationが存在すれば登録できる' do
       expect(@user).to be_valid
       
     end
   end

    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
       
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end
      it '重複したemailが存在する場合は登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('')
      end
      it 'emailは@を含まないと登録できない' do
        @user.email = 'testmail'
        @user.valid?
        
        expect(@user.errors.full_messages).to include('')
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end
      it 'passwordが6文字以上でないと登録できない' do
        @user.password = 'yyyyy'
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end
      it 'passwordは英字のみのパスワードでは登録できない' do
        @user.password = "aaaaaa"
        @user.password_confirmation = "aaaaaa"
        @user.valid?
        
        expect(@user.errors.full_messages).to include("")
      end
      it 'passwordは数字のみのパスワードでは登録できない' do
        @user.password = "111111"
        @user.password_confirmation = "111111"
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end
      it 'passwordは全角文字を含むパスワードでは登録できない' do
        @user.password = "AAAAAA"
        @user.password_confirmation = "AAAAAA"
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = '123456'
        @user.password_confirmation = '123457'
        @user.valid?
       
        expect(@user.errors.full_messages).to include("")
      end


    end
   end
end
