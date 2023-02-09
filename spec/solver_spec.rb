require_relative '../lib/solver'

describe Solver do
  describe '#new' do
    it 'Creates a new solver instance' do
      expect(subject).to be_instance_of(Solver)
    end
  end

  describe '#factorial' do
    it 'should throw an exception for negative numbers' do
      expect(subject.factorial(-6)).to eql('Cannot factorize negative numbers')
    end

    it 'should return for factorial(0)' do
      expect(subject.factorial(0)).to eql(1)
    end

    it 'should return 120 for factorial(5)' do
      expect(subject.factorial(5)).to eql(120)
    end
  end
end
