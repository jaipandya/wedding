require 'wedding'

describe "Wedding#default_config" do
  it "returns default config options" do
    Wedding.default_config.should eql({
        :groom_name => "Jai",
        :groom_about => "Programmer, Traveller, Photographer, Biker, SlideShare Engineer",
        :groom_occupation => "Hacker at SlideShare",
        :groom_email => "jaipandya@gmail.com",
        :bride_name => "Prerita",
        :bride_about => "Banker, Traveller, Dancer, Painter, Dreamer",
        :bride_occupation => "Asst. Manager at Bank of Baroda",
        :bride_email => "preritayadav@gmail.com",
        :location => "26° 53.415', 75° 48.466'",
        :event_schedule => [
          "7:00 pm Barats starts from Home",
          "8:00 pm Barat reaches venue",
          "12:00 pm Fere"
        ],
        :date => "29 November 2013"
      }) 
  end
end

describe "Wedding::Ceremony" do
  
  it "correctly initializes all the instance variables" do
  end
  
  it "launches the browser for map location" do
  end

  it "prints an awesome invitation message" do
  end

  it 'RSVPs for the event' do
  end

end