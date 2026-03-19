# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
[
  "JFK", "LAX", "ORD", "ATL", "YYZ", "LHR", "CDG", "AMS", "FRA", "MAD",
  "DXB", "HND", "PEK", "SIN", "HKG", "DOH", "AUH", "PAP", "YUL",
  "SFO", "SEA", "MIA", "BOS", "PHX", "GRU", "MEX", "EZE", "JNB", "CAI",
  "SYD", "AKL", "MAD", "BCN", "PMI", "AGP", "ALC", "IBZ", "LPA", "TFS", "TFN", "ACE", "FUE", "SPC",
  "BIO", "SVQ", "VLC", "ZAZ", "SCQ", "OVD", "SDR", "VGO", "LCG", "REU", "GRO", "LEI",
  "GRX", "XRY", "RMU", "EAS", "PNA", "RJL", "BJZ", "MLN", "YYZ", "YVR", "YUL",
  "YYC", "YEG", "YOW", "YWG", "YHZ", "YQB", "YXE", "YQR", "YQT",
  "YXX", "YXS", "YTZ", "YFC", "YQM", "YQX", "YYT", "YDF", "YBL", "YCD", "YYJ", "YKA",
  "YXC", "YQL", "YLW", "YMM", "YFB", "YRT", "YEK", "YTH", "YMO", "YVP", "YGL", "YVO",
  "YUY", "YBC", "YBG", "YMT", "YHU", "YND", "YQG", "YHM", "YXU", "YYB", "YTS", "YAM",
  "YCG", "YWL", "YDL", "YKA", "YXS"
].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end

flights = [
  {
    flight_number: "AA101",
    departure_airport_id: "JFK",
    arrival_airport_id: "LAX",
    departure_time: Time.parse("2026-04-01 08:00"),
    flight_duration: 360
  },
  {
    flight_number: "BA202",
    departure_airport_id: "LHR",
    arrival_airport_id: "JFK",
    departure_time: Time.parse("2026-04-01 10:00"),
    flight_duration: 420
  },
  {
    flight_number: "AF303",
    departure_airport_id: "CDG",
    arrival_airport_id: "AMS",
    departure_time: Time.parse("2026-04-01 09:30"),
    flight_duration: 75
  },
  {
    flight_number: "LH404",
    departure_airport_id: "FRA",
    arrival_airport_id: "MAD",
    departure_time: Time.parse("2026-04-01 12:00"),
    flight_duration: 180
  },
  {
    flight_number: "IB505",
    departure_airport_id: "MAD",
    arrival_airport_id: "BCN",
    departure_time: Time.parse("2026-04-01 14:00"),
    flight_duration: 75
  },
  {
    flight_number: "EK606",
    departure_airport_id: "DXB",
    arrival_airport_id: "SIN",
    departure_time: Time.parse("2026-04-02 02:00"),
    flight_duration: 420
  },
  {
    flight_number: "QR707",
    departure_airport_id: "DOH",
    arrival_airport_id: "HKG",
    departure_time: Time.parse("2026-04-02 03:30"),
    flight_duration: 480
  },
  {
    flight_number: "AC808",
    departure_airport_id: "YYZ",
    arrival_airport_id: "YVR",
    departure_time: Time.parse("2026-04-01 07:00"),
    flight_duration: 300
  },
  {
    flight_number: "WS909",
    departure_airport_id: "YYC",
    arrival_airport_id: "YUL",
    departure_time: Time.parse("2026-04-01 11:00"),
    flight_duration: 240
  },
  {
    flight_number: "DL010",
    departure_airport_id: "ATL",
    arrival_airport_id: "MIA",
    departure_time: Time.parse("2026-04-01 15:00"),
    flight_duration: 120
  },
  {
    flight_number: "UA111",
    departure_airport_id: "SFO",
    arrival_airport_id: "SEA",
    departure_time: Time.parse("2026-04-01 16:00"),
    flight_duration: 120
  },
  {
    flight_number: "AM212",
    departure_airport_id: "MEX",
    arrival_airport_id: "LAX",
    departure_time: Time.parse("2026-04-02 06:00"),
    flight_duration: 240
  },
  {
    flight_number: "LA313",
    departure_airport_id: "GRU",
    arrival_airport_id: "EZE",
    departure_time: Time.parse("2026-04-02 09:00"),
    flight_duration: 180
  },
  {
    flight_number: "QF414",
    departure_airport_id: "SYD",
    arrival_airport_id: "AKL",
    departure_time: Time.parse("2026-04-03 08:00"),
    flight_duration: 180
  },
  {
    flight_number: "IB515",
    departure_airport_id: "PMI",
    arrival_airport_id: "MAD",
    departure_time: Time.parse("2026-04-01 18:00"),
    flight_duration: 90
  },
  {
    flight_number: "VY616",
    departure_airport_id: "BCN",
    arrival_airport_id: "IBZ",
    departure_time: Time.parse("2026-04-01 19:30"),
    flight_duration: 60
  },
  {
    flight_number: "UX717",
    departure_airport_id: "AGP",
    arrival_airport_id: "BIO",
    departure_time: Time.parse("2026-04-02 10:00"),
    flight_duration: 90
  },
  {
    flight_number: "TS818",
    departure_airport_id: "YUL",
    arrival_airport_id: "YYZ",
    departure_time: Time.parse("2026-04-01 13:00"),
    flight_duration: 75
  },
  { flight_number: "AA201", departure_airport_id: "JFK", arrival_airport_id: "LHR", departure_time: Time.parse("2026-04-03 07:30"), flight_duration: 420 },
  { flight_number: "UA202", departure_airport_id: "LAX", arrival_airport_id: "SFO", departure_time: Time.parse("2026-04-04 09:00"), flight_duration: 90 },
  { flight_number: "DL203", departure_airport_id: "ATL", arrival_airport_id: "ORD", departure_time: Time.parse("2026-04-05 13:00"), flight_duration: 120 },
  { flight_number: "AF204", departure_airport_id: "CDG", arrival_airport_id: "MAD", departure_time: Time.parse("2026-04-06 11:00"), flight_duration: 120 },
  { flight_number: "IB205", departure_airport_id: "MAD", arrival_airport_id: "PMI", departure_time: Time.parse("2026-04-07 15:00"), flight_duration: 90 },
  { flight_number: "LH206", departure_airport_id: "FRA", arrival_airport_id: "AMS", departure_time: Time.parse("2026-04-08 08:00"), flight_duration: 75 },
  { flight_number: "EK207", departure_airport_id: "DXB", arrival_airport_id: "DOH", departure_time: Time.parse("2026-04-09 02:00"), flight_duration: 75 },
  { flight_number: "QR208", departure_airport_id: "DOH", arrival_airport_id: "PEK", departure_time: Time.parse("2026-04-10 04:00"), flight_duration: 540 },
  { flight_number: "CX209", departure_airport_id: "HKG", arrival_airport_id: "SIN", departure_time: Time.parse("2026-04-11 06:30"), flight_duration: 240 },
  { flight_number: "AC210", departure_airport_id: "YYZ", arrival_airport_id: "YOW", departure_time: Time.parse("2026-04-12 10:00"), flight_duration: 60 },
  { flight_number: "WS211", departure_airport_id: "YVR", arrival_airport_id: "YYC", departure_time: Time.parse("2026-04-13 12:00"), flight_duration: 90 },
  { flight_number: "TS212", departure_airport_id: "YUL", arrival_airport_id: "YHZ", departure_time: Time.parse("2026-04-14 14:00"), flight_duration: 90 },
  { flight_number: "AM213", departure_airport_id: "MEX", arrival_airport_id: "JFK", departure_time: Time.parse("2026-04-15 07:00"), flight_duration: 300 },

  { flight_number: "LA214", departure_airport_id: "GRU", arrival_airport_id: "MIA", departure_time: Time.parse("2026-04-18 22:00"), flight_duration: 480 },
  { flight_number: "SA215", departure_airport_id: "JNB", arrival_airport_id: "CAI", departure_time: Time.parse("2026-04-20 09:00"), flight_duration: 480 },
  { flight_number: "QF216", departure_airport_id: "SYD", arrival_airport_id: "HND", departure_time: Time.parse("2026-04-22 12:00"), flight_duration: 540 },
  { flight_number: "NZ217", departure_airport_id: "AKL", arrival_airport_id: "SYD", departure_time: Time.parse("2026-04-25 16:00"), flight_duration: 180 },

  { flight_number: "IB218", departure_airport_id: "BCN", arrival_airport_id: "AGP", departure_time: Time.parse("2026-05-01 09:00"), flight_duration: 95 },
  { flight_number: "VY219", departure_airport_id: "SVQ", arrival_airport_id: "VLC", departure_time: Time.parse("2026-05-03 11:00"), flight_duration: 70 },
  { flight_number: "UX220", departure_airport_id: "BIO", arrival_airport_id: "PMI", departure_time: Time.parse("2026-05-05 13:30"), flight_duration: 100 },
  { flight_number: "FR221", departure_airport_id: "ALC", arrival_airport_id: "MAD", departure_time: Time.parse("2026-05-07 17:00"), flight_duration: 75 },
  { flight_number: "AC222", departure_airport_id: "YYC", arrival_airport_id: "YEG", departure_time: Time.parse("2026-05-10 08:00"), flight_duration: 60 },
  { flight_number: "WS223", departure_airport_id: "YWG", arrival_airport_id: "YYZ", departure_time: Time.parse("2026-05-12 15:00"), flight_duration: 150 },
  { flight_number: "DL224", departure_airport_id: "BOS", arrival_airport_id: "MIA", departure_time: Time.parse("2026-05-15 18:00"), flight_duration: 210 },
  { flight_number: "UA225", departure_airport_id: "SEA", arrival_airport_id: "PHX", departure_time: Time.parse("2026-05-18 20:00"), flight_duration: 180 }
]

flights.each do |attrs|
  Flight.create!(attrs)
end
