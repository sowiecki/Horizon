# find_or_CREATE_by THIS health_category ('Health')
social_justice_category = Category.find_or_create_by({name:"Social Justice", description: "Major issues concerning social issues and civil liberties."})

# find_or_CREATE_by THE ISSUE 'Healthcare' AND PUT IT UNDER THIS health_category
lgbt_issue = Issue.find_or_create_by({name: "LGBT", description: ""})
social_justice_category.issues << lgbt_issue
# LGBT Rights

lgbt_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '21692297', username: 'TheAdvocateMag', twitter: 'https://twitter.com/TheAdvocateMag', avatar: 'http://pbs.twimg.com/profile_images/487659151669985280/5CIqyU0-_normal.jpeg', name: 'The Advocate', bio: 'The World\'s Leading LGBT News Source'}),
User.find_or_create_by({provider: 'twitter', uid: '18301196', username: 'gaycivilrights', twitter: 'https://twitter.com/gaycivilrights', avatar: 'http://pbs.twimg.com/profile_images/475345167285633025/K_t3lWZ0_normal.png', name: 'Gay Civil Rights', bio: 'The New Civil Rights Movement. News and opinion on LGBT civil rights and progressive politics.'}),
User.find_or_create_by({provider: 'twitter', uid: '15785683', username: 'LGBT', twitter: 'https://twitter.com/LGBT', avatar: 'http://pbs.twimg.com/profile_images/57968777/heart_normal.JPG', name: 'LGBT - Gay News', bio: 'Lgbt news'}),
User.find_or_create_by({provider: 'twitter', uid: '31583882', username: 'glaad', twitter: 'https://twitter.com/glaad', avatar: 'http://pbs.twimg.com/profile_images/539787649838362627/P34OrzXP_normal.jpeg', name: 'GLAAD', bio: 'The voice for LGBT equality.'}),
User.find_or_create_by({provider: 'twitter', uid: '305732399', username: 'TPEquality', twitter: 'https://twitter.com/TPEquality', avatar: 'http://pbs.twimg.com/profile_images/1371219631/ThinkProgressTwitter-16_normal.png', name: 'ThinkProgress LGBT', bio: 'ThinkProgress LGBT: politics, news, and analysis about LGBT issues from @ThinkProgress. Edited by @ZackFord.'}),
User.find_or_create_by({provider: 'twitter', uid: '21925979', username: 'ACLULGBT', twitter: 'https://twitter.com/ACLULGBT', avatar: 'http://pbs.twimg.com/profile_images/378800000613947536/edae880ebf3e58e2ddbb08538a523d2b_normal.png', name: 'ACLU LGBT', bio: 'The ACLU\'s LGBT Project brings impact lawsuits that expand rights for LGBT people. Our tweets may use bit.ly URL shortener: http://t.co/vilZThFSZF'}),
User.find_or_create_by({provider: 'twitter', uid: '32774989', username: 'NOH8Campaign', twitter: 'https://twitter.com/NOH8Campaign', avatar: 'http://pbs.twimg.com/profile_images/523137919695855617/ClL21jxP_normal.jpeg', name: 'NOH8 Campaign', bio: 'Putting a face to the fight for equality! Join us in taking a stand against bullying and discrimination. #NOH8 #NOH8Worldwide'}),
User.find_or_create_by({provider: 'twitter', uid: '15581045', username: 'PhilaGayNews', twitter: 'https://twitter.com/PhilaGayNews', avatar: 'http://pbs.twimg.com/profile_images/1109341172/official_White_House_Pic_normal.jpeg', name: 'Mark Segal', bio: 'The Nations most awarded LGBT  journalist, Publisher, activist and pioneer.'}),
User.find_or_create_by({provider: 'twitter', uid: '18327279', username: 'Queerty', twitter: 'https://twitter.com/Queerty', avatar: 'http://pbs.twimg.com/profile_images/3176260537/78a8ebd9e5da257dedff6de86aada699_normal.jpeg', name: 'Queerty', bio: 'The LGBT news, politics, lifestyle, gossip and entertainment site. Our slogan: Free of an agenda. Except that gay one. http://t.co/mzPAOYr4FM'}),
User.find_or_create_by({provider: 'twitter', uid: '15730336', username: 'nlgja', twitter: 'https://twitter.com/nlgja', avatar: 'http://pbs.twimg.com/profile_images/57794975/1_normal.jpg', name: 'NLGJA', bio: 'LGBT journalists and communicators on a mission to improve coverage.'})]

lgbt_perspectives.each do |expert|
  lgbt_issue.perspectives << expert
end

police_militarization_issue = Issue.find_or_create_by({name: "Police Militarization", description: ''})
social_justice_category.issues << police_militarization_issue

police_militarization_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '116625196', username: 'CopWatch', twitter: 'https://twitter.com/CopWatch', avatar: 'http://pbs.twimg.com/profile_images/378800000863401905/SnwA6aaJ_normal.jpeg', name: 'Copwatch', bio: 'The cops watch us. We get cameras to watch the cops. You can too. Ask us or groups like @Peoples_Justice for trainings.'}),
User.find_or_create_by({provider: 'twitter', uid: '2840421262', username: 'thisstopstoday', twitter: 'https://twitter.com/thisstopstoday', avatar: 'http://pbs.twimg.com/profile_images/543048332084797442/W9IttCGS_normal.jpeg', name: '#ThisStopsToday', bio: 'Find or add to #11days of #ThisStopsToday actions in NYC here http://t.co/MPJzG9R3Gb'}),
User.find_or_create_by({provider: 'twitter', uid: '1566309990', username: 'privacysos', twitter: 'https://twitter.com/privacysos', avatar: 'http://pbs.twimg.com/profile_images/378800000104942855/5c469d82bb0b97a45c84e2db6d536375_normal.jpeg', name: 'Privacy Matters', bio: 'An @ACLU_MasPolice Militarizations blog covering electronic surveillance, privacy, police militarization, the war on drugs, and other civil liberties issues.'}),
User.find_or_create_by({provider: 'twitter', uid: '16403723', username: 'IPS_DC', twitter: 'https://twitter.com/IPS_DC', avatar: 'http://pbs.twimg.com/profile_images/492017452419514370/U9-2Chfp_normal.png', name: 'InstPolicyStudies', bio: 'Since 1963, the Institute for Policy Studies has challenged inequality, corporate power, polluters, and militarism.'}),
User.find_or_create_by({provider: 'twitter', uid: '11929312', username: 'MikeRiggs', twitter: 'https://twitter.com/MikeRiggs', avatar: 'http://pbs.twimg.com/profile_images/545341220088999936/BGlZsluC_normal.jpeg', name: 'Mike Riggs', bio: 'Sentencing reform advocate, NBA junkie, former journalist. Hang my hat at @FAMMfoundation. Contact: mriggs at famm dot org.'}),
User.find_or_create_by({provider: 'twitter', uid: '409856559', username: '\nmichael_urbina', twitter: 'https://twitter.com/\nmichael_urbina', avatar: 'http://pbs.twimg.com/profile_images/514298656367726593/T_gyMsO8_normal.jpeg', name: 'Michael A. Urbina', bio: 'Salvadorian-American pro-feminist writer. Police/militarization scholar-in-training. DV educator. | Email: michaelaurbina@gmail.com'}),
User.find_or_create_by({provider: 'twitter', uid: '258940556', username: 'lesleybikes', twitter: 'https://twitter.com/lesleybikes', avatar: 'http://pbs.twimg.com/profile_images/2266795814/6j8tf2cblvo1ay27t119_normal.jpeg', name: 'Lesley Wood', bio: 'Activist, sociologist, and pollyanna. Author of Crisis and Control: The Militarization of Protest Policing @plutopress, @readBTLbooks'})]

police_militarization_perspectives.each do |expert|
  police_militarization_issue.perspectives << expert
end


# Civil Rights
civil_rights_issue = Issue.find_or_create_by({name: "Civil Rights", description: ''})


civil_rights_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '29417304', username: 'deray', twitter: 'https://twitter.com/deray', avatar: 'http://pbs.twimg.com/profile_images/555381462107570176/TBtL-FxK_normal.jpeg', name: 'deray mckesson', bio: 'I will never betray my heart. Curator, connector, commited to ed equity. TFA alum. Bowdoin loyalist. Protestor. deray@thisisthemovement.org.'}),
User.find_or_create_by({provider: 'twitter', uid: '2517988075', username: 'tanehisicoates', twitter: 'https://twitter.com/tanehisicoates', avatar: 'http://pbs.twimg.com/profile_images/504760942152777730/TjQkVM2T_normal.jpeg', name: 'Ta-Nehisi Coates', bio: 'I propose to move immediately upon your works.'}),
User.find_or_create_by({provider: 'twitter', uid: '755113', username: 'ShaunKing', twitter: 'https://twitter.com/ShaunKing', avatar: 'http://pbs.twimg.com/profile_images/552566266305597441/0P_nGARo_normal.jpeg', name: 'Shaun King', bio: 'Blow the dust off of your dreams w/ my brand new book, The Power of 100! Kickstart Your Dreams, Build Momentum, and Discover Unlimited Possibility'}),
User.find_or_create_by({provider: 'twitter', uid: '29006114', username: 'LatoyaPeterson', twitter: 'https://twitter.com/LatoyaPeterson', avatar: 'http://pbs.twimg.com/profile_images/544524466785501184/Lfu-cCM9_normal.jpeg', name: 'Latoya Peterson', bio: 'Always: @Racialicious. Current: Deputy Editor, Voices at @ThisIsFusion. Past: @AJAMStream, @JSKStanford, @ONA. Social Justice Battlemage, casting shade.'}),
User.find_or_create_by({provider: 'twitter', uid: '14195880', username: 'MikeRugnetta', twitter: 'https://twitter.com/MikeRugnetta', avatar: 'http://pbs.twimg.com/profile_images/528972620944113664/dX694Ovr_normal.jpeg', name: 'Mike Rugnetta', bio: 'Social Justice Street Samurai. “xtreme annoy hipster” - Some Lady on the Internet.\n\n@avantmedia, @memefactory, @pbsideachannel &\n@reasonablysnd'}),
User.find_or_create_by({provider: 'twitter', uid: '58503762', username: 'civilrightsorg', twitter: 'https://twitter.com/civilrightsorg', avatar: 'http://pbs.twimg.com/profile_images/464111345911070720/ivTC07vu_normal.png', name: 'Civil Rights', bio: 'The Leadership Conference on Civil and Human Rights is the nation’s premier civil and human rights coalition consisting of more than 200 natl orgs.'}),
User.find_or_create_by({provider: 'twitter', uid: '14700316', username: 'hrw', twitter: 'https://twitter.com/hrw', avatar: 'http://pbs.twimg.com/profile_images/760156135/HRWLogo_normal.jpg', name: 'Human Rights Watch', bio: 'HRW provides timely information about #humanrights crises in 90+ countries. Curated by @jimmurphysf & @astroehlein Staff list: https://t.co/wBw0SILvlQ'}),
User.find_or_create_by({provider: 'twitter', uid: '19608297', username: 'HRC', twitter: 'https://twitter.com/HRC', avatar: 'http://pbs.twimg.com/profile_images/556200135546257408/sxYaKxak_normal.jpeg', name: 'HumanRightsCampaign', bio: 'The Human Rights Campaign is America’s largest civil rights organization working to achieve lesbian, gay, bisexual and transgender (#LGBT) #equality.'}),
User.find_or_create_by({provider: 'twitter', uid: '16153562', username: 'amnesty', twitter: 'https://twitter.com/amnesty', avatar: 'http://pbs.twimg.com/profile_images/503277927912329216/niWJ1nYD_normal.jpeg', name: 'AmnestyInternational', bio: 'We\'ve been fighting the bad guys since 1961 - you can join us! Official Amnesty International USA profile - Executive Director @StevenWHawkins RTs≠endorsements.'}),
User.find_or_create_by({provider: 'twitter', uid: '1604931252', username: 'Blklivesmatter', twitter: 'https://twitter.com/Blklivesmatter', avatar: 'http://pbs.twimg.com/profile_images/378800000231684185/6ac9e7be4d6fec12c57cfda6a04c6942_normal.png', name: 'Black Lives Matter', bio: '#blacklivesmatter is an affirmation and embrace of the resistance & resilience of Black people. project founded by @osope @opalayo @aliciagarza'})]

civil_rights_perspectives.each do |expert|
  civil_rights_issue.perspectives << expert
end
# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

