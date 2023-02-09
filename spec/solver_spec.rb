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

  describe '#fizzbuzz' do
    it 'should return fizz for fizzbuzz(9)' do
      expect(subject.fizzbuzz(9)).to eql('fizz')
    end
    it 'should return buzz for fizzbuzz(20)' do
      expect(subject.fizzbuzz(20)).to eql('buzz')
    end
    it 'should return fizzbuzz for fizzbuzz(15)' do
      expect(subject.fizzbuzz(15)).to eql('fizzbuzz')
    end
    it 'should return fizz for fizzbuzz(9)' do
      expect(subject.fizzbuzz(7)).to eql('7')
    end
  end
end
