require_relative '../lib/solver'

describe Solver do
  describe '#new' do
    it 'Creates a new solver instance' do
      expect(subject).to be_instance_of(Solver)
    end
  end

  describe '#factorial' do
    it 'should throw an exception for negative numbers' do
      expect { subject.factorial(-6) }.to raise_error(RuntimeError, 'Cannot factorize negative numbers')
    end

    it 'should return for factorial(0)' do
      expect(subject.factorial(0)).to eql(1)
    end

    it 'should return 120 for factorial(5)' do
      expect(subject.factorial(5)).to eql(120)
    end
  end

  describe '#reverse' do
    it 'should throw an error with wrong number of arguments' do
      expect { subject.reverse('hello', 'hi') }.to raise_error(ArgumentError)
    end

    it 'should return olleh for hello' do
      expect(subject.reverse('hello')).to eql('olleh')
    end
  end
end
