require 'docking_station'

describe DockingStation do
  bike = Bike.new

  describe '#release_bike' do
    it 'shows docked bikes' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when docking station is empty' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when docking station is full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
      expect { subject.dock(bike) }.to raise_error 'Docking Station full'
    end
  end

  it 'releases a working bike' do
    subject.dock(bike)
    subject.release_bike
    expect(bike).to be_working
  end
end
