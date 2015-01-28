# find_or_CREATE_by THIS CATEGORY
fp_category = Category.find_or_create_by({name:"Foreign Policy", description: "Major issues concerning American foreign policy and international affairs."})

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
me_issue = Issue.find_or_create_by({name: "Middle East", description: "News and analysis focusing on the Middle East."})
fp_category.issues << me_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

me_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '17060020', username: 'Max_Fisher', twitter: 'https://twitter.com/Max_Fisher', avatar: 'http://pbs.twimg.com/profile_images/537046985770270720/7LWx0KQj_normal.jpeg', name: 'Max Fisher', bio: 'Content Director at @VoxDotCom. I love your real smart idea.'}),
User.find_or_create_by({provider: 'twitter', uid: '108441652', username: 'pushinghoops', twitter: 'https://twitter.com/pushinghoops', avatar: 'http://pbs.twimg.com/profile_images/428193413465665536/UWlRZ7iL_normal.jpeg', name: 'Ayesha A. Siddiqi', bio: 'writer, editor in chief of @NewInquiry thank you based goth'}),
User.find_or_create_by({provider: 'twitter', uid: '2373735295', username: 'MiddleEastEye', twitter: 'https://twitter.com/MiddleEastEye', avatar: 'http://pbs.twimg.com/profile_images/451691911783264256/WfXRGh-B_normal.png', name: 'Middle East Eye', bio: 'Your eye on the ground. Independent Middle East and North Africa news'}),
User.find_or_create_by({provider: 'twitter', uid: '130238301', username: 'WSJMidEast', twitter: 'https://twitter.com/WSJMidEast', avatar: 'http://pbs.twimg.com/profile_images/420902998349316096/a0CMsPXb_normal.png', name: 'WSJ Middle East', bio: 'The Wall Street Journal\'s Middle East Real Time blog gives an inside look at the intersection of business, economics and politics in the Middle East'}),
User.find_or_create_by({provider: 'twitter', uid: '81136269', username: 'MiddleEastMnt', twitter: 'https://twitter.com/MiddleEastMnt', avatar: 'http://pbs.twimg.com/profile_images/543502394466631680/nujXyCLm_normal.png', name: 'Middle East Monitor', bio: 'Bringing a fair & accurate coverage of the Middle East to the West // Community Guidelines apply: https://t.co/eyU6jycwsp'}),
User.find_or_create_by({provider: 'twitter', uid: '47814419', username: 'MiddleEastInst', twitter: 'https://twitter.com/MiddleEastInst', avatar: 'http://pbs.twimg.com/profile_images/463355943837659136/jHhlAKtZ_normal.png', name: 'MiddleEast Institute', bio: 'Providing non-partisan, expert information & analysis, promoting greater understanding between the peoples of the U.S. & Middle East'}),
User.find_or_create_by({provider: 'twitter', uid: '24506246', username: 'haaretzcom', twitter: 'https://twitter.com/haaretzcom', avatar: 'http://pbs.twimg.com/profile_images/447748380958011392/B-3cSD0r_normal.png', name: 'Haaretz.com', bio: 'All the news, opinion and analysis from Israel, the Middle East and the Jewish World.'}),
User.find_or_create_by({provider: 'twitter', uid: '216004978', username: 'MideastVoice', twitter: 'https://twitter.com/MideastVoice', avatar: 'http://pbs.twimg.com/profile_images/2084485158/logo-mev_copy_normal.jpg', name: 'Middle East Voices ', bio: 'News, Views and Conversation brought to you by VOA Middle East Voices. Come join us. http://t.co/FnqYaX1ErB'})]

me_perspectives.each do |expert|
  me_issue.perspectives << expert
end

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
china_issue = Issue.find_or_create_by({name: "China", description: ""})
fp_category.issues << china_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

china_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '16994529', username: 'ChinaRealTime', twitter: 'https://twitter.com/ChinaRealTime', avatar: 'http://pbs.twimg.com/profile_images/460715609026617344/zVQRPPed_normal.png', name: 'WSJ China Real Time', bio: 'Insight and analysis on a changing China, from WSJ and Dow Jones'}),
User.find_or_create_by({provider: 'twitter', uid: '509191768', username: 'byAlanWong', twitter: 'https://twitter.com/byAlanWong', avatar: 'http://pbs.twimg.com/profile_images/558845870771163136/JUfA1H1X_normal.jpeg', name: 'Alan Wong', bio: 'I report for @nytimes from Hong Kong, dutifully following 689 comrades.'}),
User.find_or_create_by({provider: 'twitter', uid: '599065130', username: 'ReutersChina', twitter: 'https://twitter.com/ReutersChina', avatar: 'http://pbs.twimg.com/profile_images/2844994980/2dea48bba599feeca4af10ab93d42de8_normal.png', name: 'Reuters China ', bio: 'China news, insight, pictures and videos from Reuters.'}),
User.find_or_create_by({provider: 'twitter', uid: '3512101', username: 'niubi', twitter: 'https://twitter.com/niubi', avatar: 'http://pbs.twimg.com/profile_images/533210955703128064/k8vny29r_normal.jpeg', name: 'Bill Bishop', bio: 'Sinocism China Newsletter http://t.co/aPaWh4ew1h email bill @ sinocism. com sign up for the newsletter via Twitter here: https://t.co/wtE4HgCcna'}),
User.find_or_create_by({provider: 'twitter', uid: '16288136', username: 'melissakchan', twitter: 'https://twitter.com/melissakchan', avatar: 'http://pbs.twimg.com/profile_images/60031110/Stubbs_-_Turf_with_Jockey_Up_normal.jpg', name: 'Melissa Chan', bio: 'Correspondent for Al Jazeera America based in San Francisco. Former China correspondent for Al Jazeera English.'}),
User.find_or_create_by({provider: 'twitter', uid: '64614569', username: 'ChinaBizWatch', twitter: 'https://twitter.com/ChinaBizWatch', avatar: 'http://pbs.twimg.com/profile_images/449917031320543233/6mRb51FD_normal.jpeg', name: 'China Business Watch', bio: 'We collect realtime China Business News from various news sources. Aim to provide instant information from 360 degrees. Follow us NOW!'}),
User.find_or_create_by({provider: 'twitter', uid: '23030211', username: 'eosnos', twitter: 'https://twitter.com/eosnos', avatar: 'http://pbs.twimg.com/profile_images/2475338986/vjjtig48krg83m9mbugx_normal.jpeg', name: 'Evan Osnos', bio: 'Staff Writer @NewYorker. Author of Age of Ambition (May 2014) China, US, and elsewhere'}),
User.find_or_create_by({provider: 'twitter', uid: '14926475', username: 'raykwong', twitter: 'https://twitter.com/raykwong', avatar: 'http://pbs.twimg.com/profile_images/378800000690343900/c8aed0779532e759b053ae2fa2ff13de_normal.jpeg', name: 'Ray Kwong', bio: 'Runner. US/Asia consultant. USC US China Institute senior advisor. HKEJ columnist. Forbes, Asia Security Watch, http://t.co/OGswAgKCMM contributor. Beer snob.'}),
User.find_or_create_by({provider: 'twitter', uid: '56967720', username: 'taniabranigan', twitter: 'https://twitter.com/taniabranigan', avatar: 'http://pbs.twimg.com/profile_images/337692612/profile_normal.jpg', name: 'tania branigan', bio: 'Tania Branigan is China Correspondent for The Guardian'}),
User.find_or_create_by({provider: 'twitter', uid: '14745264', username: 'malcolmmoore', twitter: 'https://twitter.com/malcolmmoore', avatar: 'http://pbs.twimg.com/profile_images/1187682145/malcolm_at_xian_2_normal.jpg', name: 'malcolmmoore', bio: 'Deputy Foreign Editor of the Daily Telegraph. Was in Beijing.'})]

china_perspectives.each do |expert|
  china_issue.perspectives << expert
end

eu_issue = Issue.find_or_create_by({name: "European Union", description: ""})
fp_category.issues << eu_issue

eu_perspectives = [
User.create({provider: 'twitter', uid: '177137867', username: 'TheEIU_Europe', twitter: 'https://twitter.com/TheEIU_Europe', avatar: 'http://pbs.twimg.com/profile_images/529329466959347712/ZfNAHfyV_normal.png', name: 'The EIU Europe', bio: 'Official tweets from the Economist Intelligence Unit\'s team of analysts, giving our take on what\'s happening in Europe.'}),
User.create({provider: 'twitter', uid: '44411598', username: 'traynorbrussels', twitter: 'https://twitter.com/traynorbrussels', avatar: 'http://pbs.twimg.com/profile_images/2538658341/cookeaj13bmirzlykjhv_normal.jpeg', name: 'Ian Traynor', bio: 'Europe Editor, The Guardian, Brussels'}),
User.create({provider: 'twitter', uid: '476072457', username: 'wolfpiccoli', twitter: 'https://twitter.com/wolfpiccoli', avatar: 'http://pbs.twimg.com/profile_images/1872309248/staff_piccoli1_normal.jpg', name: 'wolf piccoli', bio: 'MD & Director of Research at Teneo Intelligence. Politics and economics in the EU/Eurozone & Turkey. All opinions expressed here are in a personal capacity.'}),
User.create({provider: 'twitter', uid: '157981564', username: 'eu_commission', twitter: 'https://twitter.com/eu_commission', avatar: 'http://pbs.twimg.com/profile_images/454552902703407104/STojf5Wt_normal.jpeg', name: 'European Commission', bio: 'The Commission\'s job is to represent and uphold the interests of the European Union as a whole. It is headed by 28 Commissioners, 1 per member state.'}),
User.create({provider: 'twitter', uid: '191386707', username: 'a_breidthardt', twitter: 'https://twitter.com/a_breidthardt', avatar: 'http://pbs.twimg.com/profile_images/1750157081/annika_2009_quer_normal.JPG', name: 'Annika Breidthardt', bio: '@EU_Commission Spokesperson for Jobs, Growth, Investment, EMU and the European Semester'}),
User.create({provider: 'twitter', uid: '873777758', username: 'euombudsman', twitter: 'https://twitter.com/euombudsman', avatar: 'http://pbs.twimg.com/profile_images/3082385228/ae43ee47223f276ed5c5c2188d9649a3_normal.jpeg', name: 'European Ombudsman', bio: 'The #EUOmbudsman, Emily O\'Reilly, investigates poor and failed administration in EU institutions. She is completely independent. Account managed by comm team.'}),
User.create({provider: 'twitter', uid: '65322179', username: 'openeurope', twitter: 'https://twitter.com/openeurope', avatar: 'http://pbs.twimg.com/profile_images/544434957716697088/kN0B4TS7_normal.png', name: 'Open Europe', bio: 'Non-partisan and independent policy think tank, committed to EU reform. We drive change in Europe.'}),
User.create({provider: 'twitter', uid: '19232927', username: 'bloggingportal', twitter: 'https://twitter.com/bloggingportal', avatar: 'http://pbs.twimg.com/profile_images/1356556835/bloggingportal_avatar_large_normal.png', name: 'Bloggingportal.eu', bio: 'The best of the EU blogosphere.\r\nContact us: info[at]bloggingportal.eu'}),
User.create({provider: 'twitter', uid: '12593052', username: 'kosmopolit', twitter: 'https://twitter.com/kosmopolit', avatar: 'http://pbs.twimg.com/profile_images/2874553709/864f9fb8e99d909e5e5fbbc6870714ba_normal.png', name: 'kosmopolit', bio: 'Political analyst, blogger, EU wonk. Former think tank comms manager in London; currently job hunting in Brussels... [avatar: bauhaus]'}),
User.create({provider: 'twitter', uid: '5867842', username: 'stefandevries', twitter: 'https://twitter.com/stefandevries', avatar: 'http://pbs.twimg.com/profile_images/532270197496111105/3Vd8tcHp_normal.jpeg', name: 'Stefan de Vries', bio: 'Post-nationalist Journalist in Paris | Int./EU/French politics | @RTLNieuwsnl, @France24, @VRT & more | Views are mine, but yours soon. | For Rent'}),
User.create({provider: 'twitter', uid: '424864575', username: 'citizen_e', twitter: 'https://twitter.com/citizen_e', avatar: 'http://pbs.twimg.com/profile_images/1687003539/Bild1_normal.png', name: 'Citizen-E', bio: 'EU news curator - spreading the word about #EU #policies.'})
]

eu_perspectives.each do |perspective|
	eu_issue.perspectives << perspective
end
