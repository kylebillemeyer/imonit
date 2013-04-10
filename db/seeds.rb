# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

group = Group.create({ description: 'Sample apartment for demoing purposes.' })

puts('Groups created')

items = Item.create([
	{ name: 'Milk', description: 'Fluid ounces of milk.', measurement: 3 },
	{ name: 'Paper Towels', description: 'Rolls of paper towels.', measurement: 0 },
	{ name: 'Toilet Paper', description: 'Rolls of toilet paper.', measurement: 0 }])

puts('Items created.')

users = User.create([
	{ name: 'Bob Demo',   email: 'bobbyD@gmail.com',    group_id: group.id }, 
	{ name: 'Roommate 1', email: 'roommate1@gmail.com', group_id: group.id },
	{ name: 'Roommate 2', email: 'roommate2@gmail.com', group_id: group.id },
	{ name: 'Roommate 3', email: 'roommate3@gmail.com', group_id: group.id }])

puts('Users created')

tracking_milk = Tracking.create([
	{ item_id: items[0].id, group_id: group.id, count: 10, threshold: 3, tenant_on_it: nil, total_estimated_cost: 5 },
	{ item_id: items[1].id, group_id: group.id, count: 10, threshold: 3, tenant_on_it: nil, total_estimated_cost: 10 },
	{ item_id: items[2].id, group_id: group.id, count: 10, threshold: 3, tenant_on_it: nil, total_estimated_cost: 10 }])

puts('Trackings created')

subscription = Subscription.create([
	{ group_id: group.id, item_id: items[0].id, user_id: users[0].id },
	{ group_id: group.id, item_id: items[1].id, user_id: users[0].id },
	{ group_id: group.id, item_id: items[0].id, user_id: users[1].id },
	{ group_id: group.id, item_id: items[1].id, user_id: users[1].id },
	{ group_id: group.id, item_id: items[2].id, user_id: users[1].id },
	{ group_id: group.id, item_id: items[2].id, user_id: users[2].id }])

puts('Subscriptions created')