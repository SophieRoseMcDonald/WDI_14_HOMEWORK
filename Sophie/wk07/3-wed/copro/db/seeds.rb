Project.delete_all
User.delete_all


arr1 = ['mistyrose', 'tiger', 'cake', 'candy', 'fairy']
arr2 = ['pudding', 'dragon', 'floss', 'muffin', 'moon']

user = User.new
user.email = 'sophie@ga.co'
user.save

10.times do
  Project.create(
    title: "#{arr1.sample} #{arr2.sample}",
    user_id: user.id
  )
end
