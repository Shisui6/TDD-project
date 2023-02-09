describe Solver do
  describe '#new' do
    it 'Creates a new solver instance' do
      solver = Solver.new

      expect(solver).to be_instance_of(Solver)
    end
  end
end
