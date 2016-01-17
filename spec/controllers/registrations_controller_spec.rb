describe RegistrationsController, type: :controller do
  let(:user) { create :user }
  let(:action) { nil }
  let(:user_params) { build(:user).attributes }
  let(:params) { {} }

  def dispatch method
    @request.env["devise.mapping"] = Devise.mappings[:user]
    send method, action, params
  end

  describe 'GET /users/sign_up' do
    let(:action) { :new }

    before { dispatch :post }

    subject { response }

    it { is_expected.to be_success }
  end

  describe 'POST /users/sign_up' do
    let(:action) { :create }
    let(:params) { user_params }

    before { dispatch :post }

    subject { response }

    it { is_expected.to be_success }
  end
end
