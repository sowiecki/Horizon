user = User.create({username:"Luke", twitter:"L_zdanowicz"})
category = Category.create({title:"Technology"})
issue = Issue.create({title: "Net Nuetrality"})
category.issues << issue
expert_1 = User.create({username: "ggreenwald", twitter: "ggreenwald"})
expert_2 = User.create({username: "neiltyson", twitter: "neiltyson"})

