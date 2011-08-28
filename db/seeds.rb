# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
data = <<EOF
Blake,Kurinsky,DePaul,Football,0,0,0.460273384,41.85,-87.20
William,Welbes,UIC,Soccer,0,1,0.763251671,41.75,-87.81
Kevin,Rosa,UIC,Soccer,0,0,0.275015114,41.44,-87.70
Matthew,Leung,UIC,Football,0,0,0.290565854,41.49,-87.66
Bobby,Borges,UIC,Football,0,0,0.453440971,41.97,-87.91
Catherine,Whitney,UIC,Basketball,1,1,0.867689261,41.46,-87.56
Eric,Hawthorne,DePaul,Football,0,1,0.48746917,41.85,-87.41
Adriana,Morales,UIC,Football,1,0,0.124019954,41.21,-87.30
Kostya,Katz,DePaul,Basketball,1,0,0.687531826,41.18,-87.60
Olivia,Lui,DePaul,Soccer,1,0,0.000899802,41.73,-87.54
Matthew,Gilk,UIC,Football,0,0,0.040444486,41.35,-87.58
Bill,Scheurer,UIC,Football,1,0,0.124721701,41.25,-87.38
Matthew,Wojtowicz,DePaul,Soccer,1,0,0.478718828,41.67,-87.33
Jay,Yearley,DePaul,Basketball,1,1,0.441809853,41.63,-87.94
Cindy,Lam,DePaul,Football,0,1,0.255090277,41.30,-87.75
Carol,Hansen,DePaul,Football,1,0,0.744860522,41.80,-87.48
Jennifer,Wittman,Northwestern,Basketball,1,0,0.713860142,41.59,-87.66
Scott,McEvilly,DePaul,Soccer,1,1,0.430256727,41.78,-87.70
Mike,Kelley,Northwestern,Football,0,0,0.405450429,41.98,-87.94
andy,babbitt,DePaul,Soccer,0,0,0.28045142,41.80,-87.57
David,Glienna,DePaul,Football,0,1,0.547368699,41.10,-87.85
Dave,Bost,DePaul,Soccer,0,0,0.556386735,41.60,-87.84
Yvonne,washington,DePaul,Football,0,0,0.68487943,41.28,-87.73
Bruce,Paul,Northwestern,Basketball,1,0,0.643934026,41.44,-87.40
Eric,Boyd,Northwestern,Soccer,1,0,0.949871539,41.31,-87.35
Jim,Parker,DePaul,Football,1,0,0.101087528,41.28,-87.10
Joshua,Marsh,DePaul,Football,0,1,0.617686804,41.10,-87.21
Clarence,McMillan,DePaul,Soccer,1,0,0.811182015,41.00,-87.38
Nicholas,Bouyer,Northwestern,Basketball,0,0,0.632557967,41.10,-87.50
Pam,McMillan,Northwestern,Soccer,1,0,0.495917254,41.65,-87.21
Jaymes,Benson,Northwestern,Soccer,1,0,0.123194781,41.97,-87.29
Andrew,Smith,Northwestern,Soccer,1,1,0.093047395,41.99,-87.84
Roman,Efimov,UIC,Soccer,0,0,0.808796803,41.46,-87.25
Justine,Leng,DePaul,Basketball,0,1,0.653539785,41.75,-87.86
Linda,Smith,DePaul,Soccer,1,0,0.112074092,41.25,-87.66
Justin,Chambers,UIC,Basketball,1,1,0.389541783,41.84,-87.53
David,Kam,Northwestern,Basketball,0,0,0.691130116,41.39,-87.30
Jason,Gegere,Northwestern,Soccer,1,0,0.691864846,41.82,-87.61
Courtney,Baker,UIC,Basketball,0,0,0.143632666,41.28,-87.27
Donald,Pinkus,DePaul,Soccer,0,1,0.9011205,41.90,-87.28
EOF

data.each_line do |line|
  firstname,lastname,school,sports,pot,vegan,politics,lat,long = line.split(',')
  User.create!(:firstname => firstname,
               :lastname => lastname,
               :school => school,
               :sports =>sports,
               :pot => pot,
               :vegan => vegan,
               :politics => politics,
               :lat => lat,
               :long => long)
end