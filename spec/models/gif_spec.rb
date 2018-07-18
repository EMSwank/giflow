require 'rails_helper'

RSpec.describe Gif, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:image_path) }
  end
end
