# user.provider = auth["provider"]
# user.uid = auth["uid"]
# user.username = auth["info"]["nickname"]
# user.twitter = auth["info"]["urls"]["Twitter"]
# user.avatar = auth["info"]["image"]
# user.name = auth["info"]["name"]
# user.bio = auth["info"]["description"]

# CREATE THIS CATEGORY ('Science')
category = Category.create({title:"Science", description: "Major issues concerning science, the environment, and space."})

# CREATE THE ISSUE 'Global Warming' AND PUT IT UNDER THIS CATEGORY
issue = Issue.create({title: "Global Warming", description: ""})
category.issues << issue

# CREATE THE EXPERTS THAT BELONG UNDER THE 'Global Warming' ISSUE
expert = User.create({provider: 'twitter', uid: '1344789349', username: 'oneclimate', twitter: 'https://twitter.com/oneclimate', avatar: 'http://abs.twimg.com/sticky/default_profile_images/default_profile_1_normal.png', name: 'OneClimate', bio: 'OneClimate is now tweeting at @OneWorld_News'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '1117341', username: 'globalwarming', twitter: 'https://twitter.com/globalwarming', avatar: 'http://pbs.twimg.com/profile_images/1162061553/global_warming_100x100_normal.jpg', name: 'Global Warming', bio: 'Global warming, climate change and environment news from Outdoors Blog.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '18929090', username: 'adamwerbach', twitter: 'https://twitter.com/adamwerbach', avatar: 'http://pbs.twimg.com/profile_images/2681533693/bee04ba0f5dc3882ebb8fb721bc231ca_normal.png', name: 'adamwerbach', bio: 'co-founder, yerdle'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '32372834', username: 'sciencemagazine', twitter: 'https://twitter.com/sciencemagazine', avatar: 'http://pbs.twimg.com/profile_images/530435882944167936/3NRTI9XS_normal.png', name: 'Science Magazine', bio: 'The world\'s leading outlet for scientific news, commentary, and cutting-edge research. Follow @NewsfromScience for our latest news.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '14647570', username: 'sciam', twitter: 'https://twitter.com/sciam', avatar: 'http://pbs.twimg.com/profile_images/344513261578131564/b10c9510902473620c17c10b827f8a4f_normal.png', name: 'Scientific American', bio: 'Founded in 1845, Scientific American is the authoritative source for the science discoveries and technology innovations that matter.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '1117341', username: 'globalwarming', twitter: 'https://twitter.com/globalwarming', avatar: 'http://pbs.twimg.com/profile_images/1162061553/global_warming_100x100_normal.jpg', name: 'Global Warming', bio: 'Global warming, climate change and environment news from Outdoors Blog.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '20562703', username: 'greensheet', twitter: 'https://twitter.com/greensheet', avatar: 'http://pbs.twimg.com/profile_images/88874364/greensht_normal.jpg', name: 'Green Sheet', bio: 'The latest news and analysis of the business of the &quot;green&quot; industry: Wind, Solar, Oil, Nukes &amp; Garbage.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '16245822', username: 'nsf', twitter: 'https://twitter.com/nsf', avatar: 'http://pbs.twimg.com/profile_images/83610990/nsf1_normal.jpg', name: 'National Science Fdn', bio: 'Where Discoveries Begin. Social media policy: http://t.co/PhNWl8Amkn'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '24697991', username: 'environreport', twitter: 'https://twitter.com/environreport', avatar: 'http://pbs.twimg.com/profile_images/1123166513/green_logo200x200_bigger_normal.jpg', name: 'Environment Report', bio: 'The Environment Report reveals the relationship between the natural world and the everyday lives of people.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '15461733', username: 'earthvitalsigns', twitter: 'https://twitter.com/earthvitalsigns', avatar: 'http://pbs.twimg.com/profile_images/460810073661378560/b7WVZjGJ_normal.jpeg', name: 'NASA Climate', bio: 'Rocket science isn\'t enough; we\'re climate scientists, too. Find us at http://t.co/I3qh5fi91o. RTs, links & follows are not endorsements.'})
issue.experts << expert


# CREATE THE ISSUE 'Global Warming' AND PUT IT UNDER THIS CATEGORY
issue = Issue.create({title: "Fracking", description: ""})
category.issues << issue

# CREATE THE EXPERTS THAT BELONG UNDER THE 'Global Warming' ISSUE
expert = User.create({provider: 'twitter', uid: '32372834', username: 'sciencemagazine', twitter: 'https://twitter.com/sciencemagazine', avatar: 'http://pbs.twimg.com/profile_images/530435882944167936/3NRTI9XS_normal.png', name: 'Science Magazine', bio: 'The world\'s leading outlet for scientific news, commentary, and cutting-edge research. Follow @NewsfromScience for our latest news.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '14647570', username: 'sciam', twitter: 'https://twitter.com/sciam', avatar: 'http://pbs.twimg.com/profile_images/344513261578131564/b10c9510902473620c17c10b827f8a4f_normal.png', name: 'Scientific American', bio: 'Founded in 1845, Scientific American is the authoritative source for the science discoveries and technology innovations that matter.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '18089292', username: 'bmahersciwriter', twitter: 'https://twitter.com/bmahersciwriter', avatar: 'http://pbs.twimg.com/profile_images/67268364/brendan_hs_normal.jpg', name: 'Brendan Maher', bio: 'Writer and Editor working for Nature (although views expressed here are my own).'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '24697991', username: 'environreport', twitter: 'https://twitter.com/environreport', avatar: 'http://pbs.twimg.com/profile_images/1123166513/green_logo200x200_bigger_normal.jpg', name: 'Environment Report', bio: 'The Environment Report reveals the relationship between the natural world and the everyday lives of people.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '29479859', username: 'ogjonline', twitter: 'https://twitter.com/ogjonline', avatar: 'http://pbs.twimg.com/profile_images/458998146886942720/CEA3b2G5_normal.jpeg', name: 'Oil & Gas Journal', bio: 'The premier source for international oil and gas news and technology      exploration | drilling | production | processing | transportation'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '348345136', username: 'chrisadamsmkts', twitter: 'https://twitter.com/chrisadamsmkts', avatar: 'http://pbs.twimg.com/profile_images/3433234345/55060fb5e16db035a839699724577713_normal.jpeg', name: 'Chris Adams', bio: 'Financial Times Energy Editor. Any views my own. Register at http://t.co/CSo3eeoVzv to access up to 8 free FT articles a month'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '17793878', username: 'earthjustice', twitter: 'https://twitter.com/earthjustice', avatar: 'http://pbs.twimg.com/profile_images/3695200939/47906811e507e0d15e72c994aa7af49d_normal.jpeg', name: 'Earthjustice', bio: 'Because the earth needs a good lawyer'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '32913997', username: 'alexepstein', twitter: 'https://twitter.com/alexepstein', avatar: 'http://pbs.twimg.com/profile_images/472063938696192000/jTZ5-Xbq_normal.jpeg', name: 'Alex Epstein', bio: 'Founder of Center for Industrial Progress. Author of The Moral Case for Fossil Fuels (http://t.co/x6XRcCFAzv).'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '400293191', username: 'realclearenergy', twitter: 'https://twitter.com/realclearenergy', avatar: 'http://pbs.twimg.com/profile_images/3695478611/e13b8ba95258478e64c136e83dcae807_normal.png', name: 'RealClearEnergy', bio: 'Started in 2011, RealClearEnergy aggregates the very best in energy news, opinion, analysis and video from the worlds of politics, business and technology.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '1393155566', username: 'ernestmoniz', twitter: 'https://twitter.com/ernestmoniz', avatar: 'http://pbs.twimg.com/profile_images/459802927670906880/HziRrvC2_normal.jpeg', name: 'Ernest Moniz', bio: 'U.S. Secretary of @Energy. Tweets from Secretary Moniz signed -EM.'})
issue.experts << expert



# CREATE THE ISSUE 'Space Exploration' AND PUT IT UNDER THIS CATEGORY
issue = Issue.create({title: "Space Exploration", description: ""})
category.issues << issue

# CREATE THE EXPERTS THAT BELONG UNDER THE 'Space Exploration' ISSUE
expert = User.create({provider: 'twitter', uid: '14807898', username: 'elakdawalla', twitter: 'https://twitter.com/elakdawalla', avatar: 'http://pbs.twimg.com/profile_images/2022033669/IMG_0359_pp_square_normal.jpg', name: 'Emily Lakdawalla', bio: 'Senior Editor & Planetary Evangelist, The Planetary Society. Planetary scientist, writer, public speaker. Writing a book on Curiosity mission. Asteroid 274860.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '21436960', username: 'esa', twitter: 'https://twitter.com/esa', avatar: 'http://pbs.twimg.com/profile_images/459337133925216256/eqr4zgc2_normal.png', name: 'ESA', bio: 'European Space Agency, keeping you posted on European space activities.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '15500649', username: 'newhorizons2015', twitter: 'https://twitter.com/newhorizons2015', avatar: 'http://pbs.twimg.com/profile_images/56932753/Poster_compressed_normal.jpg', name: 'NewHorizons2015', bio: 'The First Space Mission to Explore Planet Pluto--Ride Along Via Principal Investigator Alan Stern\'s Private New Horizons Twitter Feed. Follow Stern @AlanStern'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '19725644', username: 'neiltyson', twitter: 'https://twitter.com/neiltyson', avatar: 'http://pbs.twimg.com/profile_images/74188698/NeilTysonOriginsA-Crop_normal.jpg', name: 'Neil deGrasse Tyson', bio: 'Astrophysicist.  Author: Space Chronicles & Inexplicable Universe [Video]; Host: @StarTalkRadio & @COSMOSonTV'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '171112947', username: 'airspacemag', twitter: 'https://twitter.com/airspacemag', avatar: 'http://pbs.twimg.com/profile_images/1359746687/ss1_normal.jpg', name: 'Air & Space Magazine', bio: 'If it flies, hovers, launches, or orbits, you can read about it in Air & Space / Smithsonian magazine. Legal: http://t.co/hZ9rLZuCpK'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '296462011', username: 'planetarykeri', twitter: 'https://twitter.com/planetarykeri', avatar: 'http://pbs.twimg.com/profile_images/528428776208609280/gbAYcZpz_normal.jpeg', name: 'Keri Bean', bio: 'Work @NASAJPL in sci ops for @NASA_Dawn #Ceres2015! Inspector No. 6. Martian meteorologist. R2D2\'s foster mom. Married to @JeffAMcGee. TX Aggie. Tweets are mine'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '742747086', username: 'the_solarsystem', twitter: 'https://twitter.com/the_solarsystem', avatar: 'http://pbs.twimg.com/profile_images/2478286497/image_normal.jpg', name: 'The Solar System', bio: 'A friendly 4.568 byr-old tweeting entity Spacecraft & mission news #SpaceTweeps #Space I\'m a volunteer #NASA / JPL Solar System Ambassador. Opinions are my own.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '1486590517', username: 'astropuckett', twitter: 'https://twitter.com/astropuckett', avatar: 'http://pbs.twimg.com/profile_images/3761273852/ce73c8ea780534a542d1420583c00b34_normal.jpeg', name: 'Andy Puckett, PhD', bio: 'Astronomer, Asteroid-Hunter, Discoverer of Worlds. This is my public/professional feed; sciencey thoughts be here.'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '556151596', username: 'lkrauss1', twitter: 'https://twitter.com/lkrauss1', avatar: 'http://pbs.twimg.com/profile_images/542573229663985664/Z5RGlDeF_normal.jpeg', name: 'Lawrence M. Krauss', bio: 'Theoretical Physicist, Cosmologist, Best-Selling Author, Science and Public Policy Advocate'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '610994398', username: 'spaceindnews', twitter: 'https://twitter.com/spaceindnews', avatar: 'http://pbs.twimg.com/profile_images/543516784872026112/-syOmyAI_normal.png', name: 'Space Industry News', bio: 'Space Industry News online magazine. For NASA, SpaceX, Astronomy and Science News Visit us at http://t.co/qrbguDYnes'})
issue.experts << expert

expert = User.create({provider: 'twitter', uid: '11348282', username: 'nasa', twitter: 'https://twitter.com/nasa', avatar: 'http://pbs.twimg.com/profile_images/188302352/nasalogo_twitter_normal.jpg', name: 'NASA', bio: 'Explore the universe and discover our home planet with @NASA. We usually post in EST (UTC-5).'})
issue.experts << expert

















####### UNNECESSARY STUFF #######

expert = User.create({provider: "twitter", uid: "16076032", username: "ggreenwald", twitter: "https://twitter.com/ggreenwald", avatar: "", name: "", bio: ""})
issue.experts << expert


expert = User.create({provider: 'twitter', uid: "16076032", username: "ggreenwald", twitter: "https://twitter.com/ggreenwald", avatar: 'http://pbs.twimg.com/profile_images/418715960158068736/Lv1oLH3A_normal.jpeg', name: "Glenn Greenwald", bio: "Journalist with @The_Intercept - author, No Place to Hide - dog/animal fanatic - email/PGP public key (https://t.co/uJnK90oulZ)"})

User.create({provider: 'twitter', uid: '16076032', username: 'ggreenwald', twitter: 'https://twitter.com/ggreenwald', avatar: 'http://pbs.twimg.com/profile_images/418715960158068736/Lv1oLH3A_normal.jpeg', name: 'Glenn Greenwald', bio: 'Journalist with @The_Intercept - author, No Place to Hide - dog/animal fanatic - email/PGP public key (https://t.co/uJnK90oulZ)'})


expert = User.create({uid: "19725644", username: "neiltyson", twitter: "neiltyson"})
issue.experts << expert

