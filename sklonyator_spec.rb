require 'rspec'

require_relative 'skloyator.rb'

describe 'sklonyator' do

  it 'should do ok for KROKODILOV' do
    expect(Sklonyator.sklonenie(5, 'krokodil', 'krokodila', 'krokodilov')).to eq 'krokodilov'
  end

  it 'should do ok for KROKODILOV' do
    [5, 6, 7, 8, 9, 0].each do |number|
      (0..100).step(10) do |i|
        summa = i + number
        expect("#{Sklonyator.sklonenie(summa, 'krokodil', 'krokodila', 'krokodilov', true)}").to eq "#{summa} krokodilov"
      end
    end
  end

  it 'should do ok for KROKODIL' do
    [1, 21, 31, 141].each do |number|
      expect("#{Sklonyator.sklonenie(number, 'krokodil', 'krokodila', 'krokodilov', true)}").to eq "#{number} krokodil"
    end
  end

  it 'should do ok for KROKODILA' do
    [2, 3, 4, 22, 33, 144].each do |number|
      expect("#{Sklonyator.sklonenie(number, 'krokodil', 'krokodila', 'krokodilov', true)}").to eq "#{number} krokodila"
    end
  end

  it 'should do ok for KROKODILOV _ SPECIAL' do
    [10, 11, 12, 13, 14, 111, 312, 1013, 2414].each do |number|
      expect("#{Sklonyator.sklonenie(number, 'krokodil', 'krokodila', 'krokodilov', true)}").to eq "#{number} krokodilov"
    end
  end


end