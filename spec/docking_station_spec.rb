require 'docking_station'

describe DockingStation do
  describe '#dock' do
    it 'raises an error when docking station is full' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error 'Docking Station full'
    end
  end

  describe '#release_bike' do
    it 'shows docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when docking station is empty' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end


  it 'releases a working bike' do
    bike = Bike.new
    subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
  end
end
