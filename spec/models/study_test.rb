require_relative '../spec_helper.rb'

describe Study do
  it 'should create' do
    sample_study!(name: 'New Study')

    Study.first.name.must_equal('New Study')
  end
end
