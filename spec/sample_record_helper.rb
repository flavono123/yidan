module SampleRecordHelper
  def sample_study(args={})
    args[:name] ||= 'test_name'
    Study.new(args)
  end

  def sample_study!(args={})
    sample_study(args).tap(&:save!)
  end
end
