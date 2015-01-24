user1 = User.create({username:"Luke", twitter:"L_zdanowicz"})


category = Category.create({title:"Technology"})
issue = Issue.create({title: "Net Neutrality"})
category.issues << issue
expert_1 = User.create({uid: "16076032", username: "ggreenwald", twitter: "ggreenwald"})
expert_2 = User.create({uid: "19725644", username: "neiltyson", twitter: "neiltyson"})
issue.experts << expert_1
issue.experts << expert_2


ed_category = Category.create({title:"Education"})
administrator_perspective = Issue.create({title: 'Administrators'})
edtech_perspective = Issue.create({title: 'Edtech'})
highered_perspective = Issue.create({title: 'Higher Ed'})
policymaker_perspective = Issue.create({title: 'Policy Maker'})



administrators = ['21stprincipal', 'nmhs_principal', 'robertjmarzano', 'tdottawa', 'darcy1968', 'gcouros', 'mikeherrity', 'hgse', 'naesp']
edtech = ['kevin_corbett', 'web20classroom', 'shellterrell', 'coolcatteacher', 'hrhheingold', 'ryantracey', 'courosa', 'audreywatters', 'betamiller', 'dianadell']
higher_ed = ['chronicle', 'nsriazat', 'biddy_martin', 'tomwhitby', 'womeninhighered', 'aaronporter', 'raulpacheco', 'vc_uel', 'gdnhighered', 'timeshighered', 'sirkenrobinson', 'thejlv', 'equal_education']
policy_makers = ['arneduncan', 'usedgov', 'edpresssec']

administrators.each do |administrator|
	user = User.create(username: administrator, twitter: administrator)
	administrator_perspective.experts << user
end

edtech.each do |educator|
	user = User.create(username: educator, twitter: educator)
	edtech_perspective.experts << user
end

higher_ed.each do |educator|
	user = User.create(username: educator, twitter: educator)
	highered_perspective.experts << user
end

policy_makers.each do |bureaucrat|
	user = User.create(username: bureaucrat, twitter: bureaucrat)
	policymaker_perspective.experts << user
end







# user.provider = auth["provider"]
# user.uid = auth["uid"]
# user.username = auth["info"]["nickname"]
# user.twitter = auth["info"]["urls"]["Twitter"]
# user.avatar = auth["info"]["image"]
