require 'spec_helper'

describe User do
	before do
		@user = User.new(username: "test", email: "test@example.com", password: "2APh%sdu", password_confirmation: "2APh%sdu")
	end

	subject { @user }

	it { should respond_to :username }
	it { should respond_to :email }
	it { should respond_to :password_digest }
	it { should respond_to :password }
	it { should respond_to :password_confirmation }

	it { should be_valid }

	describe "when username not present" do
		before { @user.username = " " }
		it { should_not be_valid }
	end

	describe "when username is too long" do
		before { @user.username = "a" * 51 }
		it { should_not be_valid }
	end

	describe "when a username contains invalid characters" do
		it "should be invalid" do
			usernames = %w[gre@t p%cent wow&6y]
			usernames.each do |uname|
				@user.username = uname
				@user.should_not be_valid
			end
		end
	end

	describe "when a username is in a valid format" do
		it "should be valid" do
			usernames = %w[testuser test_user test-user anonym0us 123go]
			usernames.each do |uname|
				@user.username = uname
				@user.should be_valid
			end
		end
	end

	describe "when a username already exists" do
		before do
			user_with_same_name = @user.dup
			user_with_same_name.username = @user.username.upcase
			user_with_same_name.save
		end

		it { should_not be_valid }
	end

	describe "when email not present" do
		before { @user.email = " "}
		it { should_not be_valid }
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example@user.foo.]
			addresses.each do |invalid_address|
				@user.email = invalid_address
				@user.should_not be_valid
			end
		end
	end

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.com A_USER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				@user.should be_valid
			end
		end
	end

	describe "when email address is already taken" do
		before do
			user_with_same_email = @user.dup
			user_with_same_email.username = "Different"
			user_with_same_email.email = @user.email.upcase
			user_with_same_email.save
		end

		it { should_not be_valid }
	end

	describe "when password is not present" do
		before { @user.password = " " }
		it { should_not be_valid }
	end

	describe "when password doesn't match confirmation" do
		before { @user.password_confirmation = "mismatch" }
		it { should_not be_valid }
	end

	describe "when password_confirmation is nil" do
		before { @user.password_confirmation = nil }
		it { should_not be_valid }
	end

	describe "with a password that's too short" do
		before { @user.password = @user.password_confirmation = "a" * 7 }
		it { should_not be_valid }
	end

	describe "with a password that is not strong" do
		it "should be invalid" do
			passwords = %w[12345678 abcdefgh ABCDEFGH AbCdE123 %aBccc##]
			passwords.each do |bad_password|
				@user.password = @user.password_confirmation = bad_password
				@user.should_not be_valid
			end
		end
	end

	describe "with a password that is strong" do
		it "should be valid" do 
			passwords = %w[%s*7*AJh NpXo8$w1 9aHdPH$2 UeGKje_5]
			passwords.each do |good_password|
				@user.password = @user.password_confirmation = good_password
				@user.should be_valid
			end
		end
	end
end
