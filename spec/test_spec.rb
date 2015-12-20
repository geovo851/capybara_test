require './lib/config.rb'

describe 'Test', js: true do
  before do
   visit '/'
   click_link 'EUR', href: '/eur/'
   click_link 'RUB', href: '/rub/'
  end

  context 'visit' do
    it { expect(page).to eq page }
  end
end
