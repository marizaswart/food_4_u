require 'rails_helper'

RSpec.describe Cart, type: :model do

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :order }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :order }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:cart)).to be_valid
    end
  end
end
