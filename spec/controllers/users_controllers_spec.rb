require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    subject { get :index }

    it 'renders the index template' do
      expect(subject).to render_template(:index)
    end
  end
end
