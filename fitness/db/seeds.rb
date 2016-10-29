
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "csv"
CSV.foreach('db/muscle.csv') do |row|
	Muscle.create(:part => row[0], :recove_time => row[1])

end
require "csv"
CSV.foreach('db/event.csv') do |row|
	Event.create(:event_name => row[1], :event_class => row[2])
end

require "csv"
CSV.foreach('db/Muscle_of_event.csv') do |row|
	MuscleOfEvent.create(:event_id => row[1], :muscle_id => row[2])
end

CSV.foreach('db/weight.csv') do |row|
	Weight.create(:profile_id => row[1], :weight => row[2], :diary_date => row[3])
end

CSV.foreach('db/ranking_test.csv') do |row|
	MuscleDiary.create(:user_id => row[1], :event_id => row[2], :weight => row[3], :num => row[4], :set_num => row[5], :diary_date => row[6])
end

CSV.foreach('db/muscle_mass.csv') do |row|
	MuscleMass.create(:profile_id => row[1], :muscle_mass => row[2], :fat => row[3], :diary_date => row[4])
end

CSV.foreach('db/user.csv') do |row|
	User.create(:id => row[0], :email => row[1], :password => row[2])
end

CSV.foreach('db/profile.csv') do |row|
	Profile.create(:id => row[0], :name => row[1], :sex => row[2], :user_id => row[4])
end

CSV.foreach('db/message.csv') do |row|
	Message.create(:id => row[0], :user_id => row[1], :sent_userid => row[2], :message => row[3])
end
