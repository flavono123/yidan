require_relative '../spec_helper.rb'

describe StudiesController do
  describe '#index' do
    it 'should work' do
      get :index
      response.status.must_equal(200)
    end
  end

  describe '#show' do
    it 'should work' do
      study = sample_study!
      get :show, params: { id: study.id }

      response.status.must_equal(200)
      study = JSON.parse response.body
      study['name'].must_equal('test_name')
    end
  end
end
