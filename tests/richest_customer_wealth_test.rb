# frozen_string_literal: true

require '../richest_customer_wealth'
describe RichestCustomerWealth do
  it 'returns wealth of richest customer for two customers in three banks' do
    expect(subject.maximum_wealth([[1, 2, 3], [3, 2, 1]])).to eq 6
  end

  it 'returns wealth of richest customer for three customers in two banks' do
    expect(subject.maximum_wealth([[1, 5], [7, 3], [3, 5]])).to eq 10
  end

  it 'returns wealth of richest customer for three customers in three banks' do
    expect(subject.maximum_wealth([[2, 8, 7], [7, 1, 3], [1, 9, 5]])).to eq 17
  end
end
