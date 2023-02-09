require_relative '../lib/solver'

describe Solver do
  describe '#new' do
    it 'Creates a new solver instance' do
      expect(subject).to be_instance_of(Solver)
    end
  end
end
