user = User.create({username:"Luke", twitter:"L_zdanowicz"})
category = Category.create({title:"Technology"})
issue = Issue.create({title: "Net Nuetrality"})
category.issues << issue
expert_1 = User.create({uid: "16076032", username: "ggreenwald", twitter: "ggreenwald"})
expert_2 = User.create({uid: "19725644", username: "neiltyson", twitter: "neiltyson"})
issue.experts << expert_1
issue.experts << expert_2



# user.provider = auth["provider"]
# user.uid = auth["uid"]
# user.username = auth["info"]["nickname"]
# user.twitter = auth["info"]["urls"]["Twitter"]
# user.avatar = auth["info"]["image"]
