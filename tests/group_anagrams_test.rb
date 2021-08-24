# frozen_string_literal: true

require '../group_anagrams'
describe GroupAnagrams do
  it 'with six strings' do
    expect(subject.group_anagrams(%w[eat tea tan ate nat bat])).to eq [%w[eat tea ate], %w[tan nat], ['bat']]
  end

  it 'with empty array' do
    expect(subject.group_anagrams([''])).to eq [['']]
  end

  it 'with one string' do
    expect(subject.group_anagrams(['a'])).to eq [['a']]
  end
end
