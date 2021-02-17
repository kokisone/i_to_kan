# frozen_string_literal: true

RSpec.describe IToKan do
  it "has a version number" do
    expect(IToKan::VERSION).not_to be nil
  end

  it "test" do
    expect(0.to_kan).to eq('零')
    expect((10 ** 0).to_kan).to eq('一')
    expect((10 ** 1).to_kan).to eq('十')
    expect((10 ** 2).to_kan).to eq('百')
    expect((10 ** 3).to_kan).to eq('千')
    expect((10 ** 4).to_kan).to eq('一万')
    expect((10 ** 5).to_kan).to eq('十万')
    expect(1234567890.to_kan).to eq('十二億三千四百五十六万七千八百九十')
  end
end
