require_relative '../lib/mairie_christmas.rb'

describe "the execute method" do
  it "calls 2 methods to scrap a webpage and gather cryptos symbols and their corresponding values" do
    expect(execute).not_to be_nil
  end
end