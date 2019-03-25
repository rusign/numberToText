require 'rspec'
require './numberToText.rb'

RSpec.describe "numberToText", "#num" do
    context "TDD for numberToText"
  it "should tranlate arabic numbers to english text" do
    expect { numberToText 1 }.to output("one\n").to_stdout
    expect { numberToText 14 }.to output("fourteen\n").to_stdout
    expect { numberToText 78 }.to output("seventy eight\n").to_stdout
    expect { numberToText 103 }.to output("one hundred three\n").to_stdout
  end
end
