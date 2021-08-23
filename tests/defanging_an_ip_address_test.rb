# frozen_string_literal: true

require '../defanging_an_ip_address'
describe DefangingAnIpAddress do
  it 'return defanged ip address' do
    expect(subject.defang_i_paddr('255.100.50.0')).to eq '255[.]100[.]50[.]0'
  end
end
