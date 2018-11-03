require_relative '../spec_helper.rb'

describe Study do
  it 'should create' do
    Study.new(name: 'New Study').save
    study = Study.first

    study.name.must_equal('New Study')
  end
end
