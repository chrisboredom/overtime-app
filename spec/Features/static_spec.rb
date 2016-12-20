require 'rails_helper'

RSpec.feature do
  describe 'navigate' do
    describe 'homepage' do
      it 'can be reached sucessfully' do
        visit "/"
        expect(page.status_code).to eq(200)
      end
    end
  end
end