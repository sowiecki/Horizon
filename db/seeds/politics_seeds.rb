
# minimum wage
politics_category = Category.create({name: "Politics", description: ""})
minimum_wage_issue = Issue.create({name: "Minimum Wage", description: ""})
politics_category.issues << minimum_wage_issue

minimum_wage_experts = [User.create({provider: 'twitter', uid: '17006157', username: 'NYTimeskrugman', twitter: 'https://twitter.com/NYTimeskrugman', avatar: 'http://pbs.twimg.com/profile_images/2044852218/NYT_Twitter_Krugman_normal.png', name: 'Paul Krugman', bio: 'Nobel laureate. Op-Ed columnist, @nytopinion. Author, “The Return of Depression Economics,” “The Great Unraveling,” “The Age of Diminished Expectations” + more.'}),
User.create({provider: 'twitter', uid: '14512287', username: 'thinkprogress_i', twitter: 'https://twitter.com/thinkprogress_i', avatar: 'http://abs.twimg.com/sticky/default_profile_images/default_profile_6_normal.png', name: 'Think Progress', bio: 'Think Progress'}),
User.create({provider: 'twitter', uid: '293129157', username: 'MinimumWageInfo', twitter: 'https://twitter.com/MinimumWageInfo', avatar: 'http://pbs.twimg.com/profile_images/3397470797/aa48aa3f065851d3620af4473cb61589_normal.png', name: 'Minimum Wage Info', bio: 'Dedicated to exploring the impact minimum wage hikes have on the economy and employment. MinimumWage.com is a project of the Employment Policies Institute.'}),
User.create({provider: 'twitter', uid: '49697450', username: 'EconomicPolicy', twitter: 'https://twitter.com/EconomicPolicy', avatar: 'http://pbs.twimg.com/profile_images/496313603293597696/0C3MNrhD_normal.png', name: 'Economic Policy Inst', bio: 'Research and Ideas for Shared Prosperity'}),
User.create({provider: 'twitter', uid: '26579339', username: 'PIIE_com', twitter: 'https://twitter.com/PIIE_com', avatar: 'http://pbs.twimg.com/profile_images/486981541138944000/xCjMtNXe_normal.jpeg', name: 'Peterson Institute', bio: 'The Peterson Institute for International Economics is a private nonprofit nonpartisan research institution devoted to studying international economic policy.'}),
User.create({provider: 'twitter', uid: '564111558', username: 'bpolitics', twitter: 'https://twitter.com/bpolitics', avatar: 'http://pbs.twimg.com/profile_images/506810384922075137/ZnYTGIew_normal.jpeg', name: 'Bloomberg Politics', bio: 'The all-new http://t.co/abb87WkawK, with @jheil and @MarkHalperin, is here.'}),
User.create({provider: 'twitter', uid: '87711816', username: 'BrookingsGlobal', twitter: 'https://twitter.com/BrookingsGlobal', avatar: 'http://pbs.twimg.com/profile_images/449647166785458178/mMseol2n_normal.png', name: 'Brookings Global', bio: 'Examining globalization: The drivers shaping the global economy, the road out of poverty and global public goods.'}),
User.create({provider: 'twitter', uid: '415644206', username: '_Melissa_Young', twitter: 'https://twitter.com/_Melissa_Young', avatar: 'http://pbs.twimg.com/profile_images/540701019814891520/UoiaxN8M_normal.jpeg', name: 'melissa young', bio: 'director of National Initiatives @heartlandhelps @tjprograms, tweets about our work and yours to end chronic #unemployment, #poverty & expand #opportunty.'}),
User.create({provider: 'twitter', uid: '24106779', username: 'SarahPortlock', twitter: 'https://twitter.com/SarahPortlock', avatar: 'http://pbs.twimg.com/profile_images/494136838462791680/a86xNfcS_normal.jpeg', name: 'Sarah Portlock', bio: 'U.S. economics reporter for @WSJ + @WSJecon'}),
User.create({provider: 'twitter', uid: '19985189', username: 'labornotes', twitter: 'https://twitter.com/labornotes', avatar: 'http://pbs.twimg.com/profile_images/831408669/tmlogo.blue_normal.jpg', name: 'Labor Notes', bio: 'Putting the movement back in the labor movement since 1979.'}),
User.create({provider: 'twitter', uid: '437019753', username: 'TimothyNoah1', twitter: 'https://twitter.com/TimothyNoah1', avatar: 'http://pbs.twimg.com/profile_images/553673457083232256/W2cw2B9u_normal.jpeg', name: 'Timothy Noah', bio: 'Author, The Great Divergence, and labor policy editor at Politico. Previously with New Republic (TRB column), Slate, WSJ, Washington Monthly, etc.'}),
User.create({provider: 'twitter', uid: '213795411', username: 'GovWalker', twitter: 'https://twitter.com/GovWalker', avatar: 'http://pbs.twimg.com/profile_images/3055810514/3933e56149b1af1e44b7f845b658f569_normal.jpeg', name: 'Governor Walker', bio: 'Official Twitter Account of the 45th Governor of the State of Wisconsin, Scott Walker'}),
User.create({provider: 'twitter', uid: '17358750', username: 'ericgarcetti', twitter: 'https://twitter.com/ericgarcetti', avatar: 'http://pbs.twimg.com/profile_images/2920158293/211d540e2237341aaefad7973b089062_normal.jpeg', name: 'Eric Garcetti', bio: 'Angeleno. Public Servant. Private Account.'})]

minimum_wage_experts.each do |expert|
  minimum_wage_issue.experts << expert
end

super_pac_issue = Issue.create({name: "Super PAC", description: ""})
politics_category.issues << super_pac_issue

#super PACS
super_pac_experts = [User.create({provider: 'twitter', uid: '11388132', username: 'lessig', twitter: 'https://twitter.com/lessig', avatar: 'http://pbs.twimg.com/profile_images/2822485013/e54012b6296106112b44465776d13d3c_normal.jpeg', name: 'Lessig', bio: 'law professor, reformer.'}),
User.create({provider: 'twitter', uid: '31127446', username: 'markknoller', twitter: 'https://twitter.com/markknoller', avatar: 'http://pbs.twimg.com/profile_images/137394623/knoller_normal.jpg', name: 'Mark Knoller', bio: 'CBS News White House Correspondent'}),
User.create({provider: 'twitter', uid: '1846196022', username: 'nhrebellion', twitter: 'https://twitter.com/nhrebellion', avatar: 'http://pbs.twimg.com/profile_images/378800000780082498/5600907c28efb2b8fd8825ef1c96efc4_normal.jpeg', name: 'nhrebellion', bio: 'Nonpartisan movement founded by @lessig to end the root problem of money in politics during the 2016 #FITN NH primary.'}),
User.create({provider: 'twitter', uid: '322183008', username: 'WolfPAChq', twitter: 'https://twitter.com/WolfPAChq', avatar: 'http://pbs.twimg.com/profile_images/1597226005/WolfPAClogo3_normal.jpg', name: 'Wolf PAC', bio: 'Fighting to get money OUT of the American Election system. Help us restore true democracy in the United States. Start by signing petition: http://t.co/AG14WMGK'}),
User.create({provider: 'twitter', uid: '82689705', username: 'tnr', twitter: 'https://twitter.com/tnr', avatar: 'http://pbs.twimg.com/profile_images/3082923015/db0cd03f11eaad17008fad8697d02d77_normal.jpeg', name: 'The New Republic', bio: 'Providing thought-provoking, unbiased coverage of politics, culture, and the world of ideas. \r\n\r\nhttps://t.co/yn59wSA9oT'}),
User.create({provider: 'twitter', uid: '605531970', username: 'unPAC', twitter: 'https://twitter.com/unPAC', avatar: 'http://pbs.twimg.com/profile_images/2389825746/wa9taml57ros1unvbb65_normal.jpeg', name: 'unPAC', bio: 'It will take millions of voices to defeat billions of dollars. Join us.'}),
User.create({provider: 'twitter', uid: '18791763', username: 'KarlRove', twitter: 'https://twitter.com/KarlRove', avatar: 'http://pbs.twimg.com/profile_images/634487275/KR_Twitter_normal.jpg', name: 'Karl Rove', bio: 'Former Deputy Chief of Staff to President George W. Bush, Author of Courage and Consequence: My Life as a Conservative in the Fight'})]

super_pac_experts.each do |expert|
  super_pac_issue.experts << expert
end
