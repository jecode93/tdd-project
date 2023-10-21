require 'rspec'
require_relative '../solver'

describe Solver do
  describe '#factorial' do
    it 'Should return a 1' do
      num = 0
      solver = Solver.new
      expect(solver.factorial(num)).to eq(1)
    end

    it 'Should return a 120' do
      num = 5
      solver = Solver.new
      expect(solver.factorial(num)).to eq(120)
    end

    it 'Should raise an exception' do
      solver = Solver.new
      expect { solver.factorial(-1) }.to raise_error('Cannot return a factorial for a negative number')
    end
  end

  describe '#reverse' do
    it 'Should return the reverse of a given string' do
      reverse = Solver.new
      expect(reverse.reverse('Hello')).to eq('olleH')
    end
  end

  describe '#fizzbuzz' do
    it 'Should return fizz' do
      fizzbuzz = Solver.new
      expect(fizzbuzz.fizzbuzz(3)).to eq('fizz')
    end

    it 'Should return 1' do
      fizzbuzz = Solver.new
      expect(fizzbuzz.fizzbuzz(1)).to eq('1')
    end

    it 'Should return buzz' do
      fizzbuzz = Solver.new
      expect(fizzbuzz.fizzbuzz(5)).to eq('buzz')
    end

    it 'Should return fizzbuzz' do
      fizzbuzz = Solver.new
      expect(fizzbuzz.fizzbuzz(15)).to eq('fizzbuzz')
    end
  end
end
