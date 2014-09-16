require 'spec_helper'

describe Insightly::DSL::Pipelines do
  # GET /v2.1/Pipelines
  describe '#get_pipelines' do
    it 'returns an array of pipelines' do
      pipelines = Insightly.client.get_pipelines
      expect(pipelines).to be_a(Array)
      expect(pipelines.first).to be_a(Pipeline)
    end
  end
  
  # GET /v2.1/Pipelines/{id}
  describe '#get_pipeline' do
    it 'returns a pipeline' do
      expect(Insightly.client.get_pipeline(1)).to be_a(Pipeline)
    end
  end
end