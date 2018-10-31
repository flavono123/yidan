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
      get :show, params: {id: 1}
      response.status.must_equal(200)
      study = JSON.parse response.body
      study['name'].must_equal('New Study')
    end
  end
end