category = Category.create({name:"Social Justice", description: "Major issues concerning social justice and civil liberties."})

# CREATE THE ISSUE 'Healthcare' AND PUT IT UNDER THIS CATEGORY
issue = Issue.create({name: "Healthcare", description: ""})
category.issues << issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE
expert = User.create({provider: 'twitter', uid: '229888557', username: 'atriushealth', twitter: 'https://twitter.com/atriushealth', avatar: 'http://pbs.twimg.com/profile_images/1220228529/AtriusHealthTwitter_normal.png', name: 'Atrius Health', bio: 'Leader in transforming the healthcare delivery system, payment reform, Pioneer ACO, use of EHR and quality'})
issue.experts << expert
