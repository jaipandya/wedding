module Wedding
  module DefaultConfig
    def self.options
      {
        :groom_name => "Jai",
        :groom_about => "About Groom Text",
        :groom_occupation => "Hacker at LinkedIn",
        :groom_email => "jaipandya@gmail.com",
        :bride_name => "Prerita",
        :bride_about => "About Bride Text",
        :bride_occupation => "Asst. Manager at Bank of Baroda",
        :bride_email => "preritayadav@gmail.com",
        :location => "Google Coordinates Here",
        :event_schedule => [
          "7:00 pm Barats starts from Home",
          "8:00 pm Barat reaches venue",
          "12:00 pm Fere"
        ],
        :date => "29 November 2013"
      }
    end
  end
end