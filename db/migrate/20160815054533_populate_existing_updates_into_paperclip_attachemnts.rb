class PopulateExistingUpdatesIntoPaperclipAttachemnts < ActiveRecord::Migration
  def up
    require 'open-uri'
    updates = [
      {
        url: "https://s3-ap-southeast-1.amazonaws.com/smartgridgurgaon/documents/Corrigendum-III+against+NIT+No.+TSGP-02%3A2016-17.zip",
        text: "Corrigendum-III against NIT No. TSGP-02/2016-17"
      }, {
        url: "https://s3-ap-southeast-1.amazonaws.com/smartgridgurgaon/documents/TSGP-02%3A2016-17.zip",
        text: "Corrigendum to TSGP-02/2016-17 "
      }, {
        url: "https://s3-ap-southeast-1.amazonaws.com/smartgridgurgaon/documents/Pre-Bid+6.5.2016+List+of+participant.docx",
        text: "List of Participants in Pre-bid Conference held on 06.05.2016"
      }, {
        url: "https://www.dropbox.com/s/mroyvc2krmh4wyy/Final_new.pdf?dl=1",
        text: "Project Report on Development of Smart Grid Leading to Smart City Gurgaon"
      }, {
        url: "https://www.dropbox.com/s/1m8p7sewszahgbh/MOM%20-%2029th%20October%20-%20ACS%20Power%20-%20Chandigarh.doc?dl=1",
        text: "MOM - 29th October - ACS Power - Chandigarh"
      }, {
        url: "https://www.dropbox.com/s/5si61odgt9souv2/National_Smart_Grid_Mission_OM.pdf?dl=1",
        text: "National Smart Grid Mission OM"
      }, {
        url: "https://www.dropbox.com/s/2vd877hq1ysg78o/Note%20for%20PGCIL%20Consultancy.doc?dl=1",
        text: "Note for PGCIL Consultancy"
      }, {
        url: "https://www.dropbox.com/s/ildjbdr4iqkeheg/Notice%20for%20open%20house%20discussion.docx?dl=1",
        text: "Notice for open house discussion"
      }, {
        url: "https://www.dropbox.com/s/1xvwaxqdd3xudau/Road%20Map%20-%20Smart%20City%20Final.doc?dl=1",
        text: "Road Map - Smart City Final"
      }, {
        url: "https://www.dropbox.com/s/bh1exrpezy7cile/Smart%20City%20Gurgaon%20Noting.docx?dl=1",
        text: "Smart City Gurgaon Noting"
      }, {
        url: "https://www.dropbox.com/s/fia2rburioq8ugp/minutesofmeeting8thoctobershramshaktibhawandelh.zip?dl=1",
        text: "Minutes of Meeting 8th October Shramshakti Bhawan Delhi"
      }, {
        url: "https://www.dropbox.com/s/lfxn9snxmo9iatf/Gurgaon%20Manesar%20Urban%20Complex.jpg?dl=1",
        text: "Final Development Plan for Urban Areas | Gurgaon-Manesar Urban-Complex-2021AD"
      }
    ].reverse
    updates.each do |update|
      u = Update.new(text: update[:text], file: open(update[:url]))
      u.save!
      close
    end
  end

  def down
  end
end
