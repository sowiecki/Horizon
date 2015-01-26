# CREATE THIS CATEGORY
fp_category = Category.create({name:"Foreign Policy", description: "Major issues concerning American foreign policy and international affairs."})

# CREATE THE ISSUE AND PUT IT UNDER THIS CATEGORY
me_issue = Issue.create({name: "Middle East", description: "News and analysis focusing on the Middle East."})
fp_category.issues << me_issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE

me_experts = [User.create({provider: 'twitter', uid: '17060020', username: 'Max_Fisher', twitter: 'https://twitter.com/Max_Fisher', avatar: 'http://pbs.twimg.com/profile_images/537046985770270720/7LWx0KQj_normal.jpeg', name: 'Max Fisher', bio: 'Content Director at @VoxDotCom. I love your real smart idea.'}),
User.create({provider: 'twitter', uid: '108441652', username: 'pushinghoops', twitter: 'https://twitter.com/pushinghoops', avatar: 'http://pbs.twimg.com/profile_images/428193413465665536/UWlRZ7iL_normal.jpeg', name: 'Ayesha A. Siddiqi', bio: 'writer, editor in chief of @NewInquiry thank you based goth'}),
User.create({provider: 'twitter', uid: '2373735295', username: 'MiddleEastEye', twitter: 'https://twitter.com/MiddleEastEye', avatar: 'http://pbs.twimg.com/profile_images/451691911783264256/WfXRGh-B_normal.png', name: 'Middle East Eye', bio: 'Your eye on the ground. Independent Middle East and North Africa news'}),
User.create({provider: 'twitter', uid: '130238301', username: 'WSJMidEast', twitter: 'https://twitter.com/WSJMidEast', avatar: 'http://pbs.twimg.com/profile_images/420902998349316096/a0CMsPXb_normal.png', name: 'WSJ Middle East', bio: 'The Wall Street Journal\'s Middle East Real Time blog gives an inside look at the intersection of business, economics and politics in the Middle East'}),
User.create({provider: 'twitter', uid: '81136269', username: 'MiddleEastMnt', twitter: 'https://twitter.com/MiddleEastMnt', avatar: 'http://pbs.twimg.com/profile_images/543502394466631680/nujXyCLm_normal.png', name: 'Middle East Monitor', bio: 'Bringing a fair & accurate coverage of the Middle East to the West // Community Guidelines apply: https://t.co/eyU6jycwsp'}),
User.create({provider: 'twitter', uid: '47814419', username: 'MiddleEastInst', twitter: 'https://twitter.com/MiddleEastInst', avatar: 'http://pbs.twimg.com/profile_images/463355943837659136/jHhlAKtZ_normal.png', name: 'MiddleEast Institute', bio: 'Providing non-partisan, expert information & analysis, promoting greater understanding between the peoples of the U.S. & Middle East'}),
User.create({provider: 'twitter', uid: '24506246', username: 'haaretzcom', twitter: 'https://twitter.com/haaretzcom', avatar: 'http://pbs.twimg.com/profile_images/447748380958011392/B-3cSD0r_normal.png', name: 'Haaretz.com', bio: 'All the news, opinion and analysis from Israel, the Middle East and the Jewish World.'}),
User.create({provider: 'twitter', uid: '216004978', username: 'MideastVoice', twitter: 'https://twitter.com/MideastVoice', avatar: 'http://pbs.twimg.com/profile_images/2084485158/logo-mev_copy_normal.jpg', name: 'Middle East Voices ', bio: 'News, Views and Conversation brought to you by VOA Middle East Voices. Come join us. http://t.co/FnqYaX1ErB'})]

me_experts.each do |expert|
  me_issue.experts << expert
end

# CREATE THE ISSUE AND PUT IT UNDER THIS CATEGORY
china_issue = Issue.create({name: "China", description: ""})
fp_category.issues << china_issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE

china_experts = User.create({provider: 'twitter', uid: '16994529', username: 'ChinaRealTime', twitter: 'https://twitter.com/ChinaRealTime', avatar: 'http://pbs.twimg.com/profile_images/460715609026617344/zVQRPPed_normal.png', name: 'WSJ China Real Time', bio: 'Insight and analysis on a changing China, from WSJ and Dow Jones'}),
User.create({provider: 'twitter', uid: '509191768', username: 'byAlanWong', twitter: 'https://twitter.com/byAlanWong', avatar: 'http://pbs.twimg.com/profile_images/558845870771163136/JUfA1H1X_normal.jpeg', name: 'Alan Wong', bio: 'I report for @nytimes from Hong Kong, dutifully following 689 comrades.'}),
User.create({provider: 'twitter', uid: '599065130', username: 'ReutersChina', twitter: 'https://twitter.com/ReutersChina', avatar: 'http://pbs.twimg.com/profile_images/2844994980/2dea48bba599feeca4af10ab93d42de8_normal.png', name: 'Reuters China ', bio: 'China news, insight, pictures and videos from Reuters.'}),
User.create({provider: 'twitter', uid: '3512101', username: 'niubi', twitter: 'https://twitter.com/niubi', avatar: 'http://pbs.twimg.com/profile_images/533210955703128064/k8vny29r_normal.jpeg', name: 'Bill Bishop', bio: 'Sinocism China Newsletter http://t.co/aPaWh4ew1h email bill @ sinocism. com sign up for the newsletter via Twitter here: https://t.co/wtE4HgCcna'}),
User.create({provider: 'twitter', uid: '16288136', username: 'melissakchan', twitter: 'https://twitter.com/melissakchan', avatar: 'http://pbs.twimg.com/profile_images/60031110/Stubbs_-_Turf_with_Jockey_Up_normal.jpg', name: 'Melissa Chan', bio: 'Correspondent for Al Jazeera America based in San Francisco. Former China correspondent for Al Jazeera English.'}),
User.create({provider: 'twitter', uid: '64614569', username: 'ChinaBizWatch', twitter: 'https://twitter.com/ChinaBizWatch', avatar: 'http://pbs.twimg.com/profile_images/449917031320543233/6mRb51FD_normal.jpeg', name: 'China Business Watch', bio: 'We collect realtime China Business News from various news sources. Aim to provide instant information from 360 degrees. Follow us NOW!'}),
User.create({provider: 'twitter', uid: '23030211', username: 'eosnos', twitter: 'https://twitter.com/eosnos', avatar: 'http://pbs.twimg.com/profile_images/2475338986/vjjtig48krg83m9mbugx_normal.jpeg', name: 'Evan Osnos', bio: 'Staff Writer @NewYorker. Author of Age of Ambition (May 2014) China, US, and elsewhere'}),
User.create({provider: 'twitter', uid: '14926475', username: 'raykwong', twitter: 'https://twitter.com/raykwong', avatar: 'http://pbs.twimg.com/profile_images/378800000690343900/c8aed0779532e759b053ae2fa2ff13de_normal.jpeg', name: 'Ray Kwong', bio: 'Runner. US/Asia consultant. USC US China Institute senior advisor. HKEJ columnist. Forbes, Asia Security Watch, http://t.co/OGswAgKCMM contributor. Beer snob.'}),
User.create({provider: 'twitter', uid: '56967720', username: 'taniabranigan', twitter: 'https://twitter.com/taniabranigan', avatar: 'http://pbs.twimg.com/profile_images/337692612/profile_normal.jpg', name: 'tania branigan', bio: 'Tania Branigan is China Correspondent for The Guardian'}),
User.create({provider: 'twitter', uid: '14745264', username: 'malcolmmoore', twitter: 'https://twitter.com/malcolmmoore', avatar: 'http://pbs.twimg.com/profile_images/1187682145/malcolm_at_xian_2_normal.jpg', name: 'malcolmmoore', bio: 'Deputy Foreign Editor of the Daily Telegraph. Was in Beijing.'})]

china_experts.each do |expert|
  china_issue.experts << expert
end