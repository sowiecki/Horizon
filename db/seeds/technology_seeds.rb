# find_or_CREATE_by THIS CATEGORY
tech_category = Category.find_or_create_by({name:"Technology", description: "Major issues concerning technology and the internet."})

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
cyber_issue = Issue.find_or_create_by({name: "Cyber Crime", description: ""})
tech_category.issues << cyber_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

cyber_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '14127605', username: 'ejhilbert', twitter: 'https://twitter.com/ejhilbert', avatar: 'http://pbs.twimg.com/profile_images/484389990990766080/Dmq6xMdQ_normal.jpeg', name: 'E.J. Hilbert', bio: 'Managing Director for Kroll Cyber In the UK, Ex-FBI Special Agent in cyber crime and counterterrorism.  All opinions posted are my own !!!'}),
User.find_or_create_by({provider: 'twitter', uid: '17241749', username: 'ashk4n', twitter: 'https://twitter.com/ashk4n', avatar: 'http://pbs.twimg.com/profile_images/63881072/face_normal.jpg', name: 'ashkan soltani', bio: 'I am a researcher focused on privacy, security, and behavioral economics. The opinions here are wholly my own.'}),
User.find_or_create_by({provider: 'twitter', uid: '15728161', username: 'NoahShachtman', twitter: 'https://twitter.com/NoahShachtman', avatar: 'http://pbs.twimg.com/profile_images/3730256651/4bb2ce25d749fceeb2a95b6b663d3f4d_normal.jpeg', name: 'Noah Shachtman', bio: '@thedailybeast\'s executive editor. With @Wired, @ForeignPolicy, @BrookingsFP in the day. noah.shachtman AT http://t.co/68iIwjpBjB'}),
User.find_or_create_by({provider: 'twitter', uid: '386519621', username: 'DoD_CyberCrime', twitter: 'https://twitter.com/DoD_CyberCrime', avatar: 'http://pbs.twimg.com/profile_images/3599951715/1c071c33affd8d92d8239f45efa03463_normal.png', name: 'DC3', bio: 'The Defense Cyber Crime Center (DC3). An entity within the Air Force Office of Special Investigations. Follows, links, & mentions do not constitute endorsement.'}),
User.find_or_create_by({provider: 'twitter', uid: '14401607', username: 'BlogsofWar', twitter: 'https://twitter.com/BlogsofWar', avatar: 'http://pbs.twimg.com/profile_images/378800000447153288/acb349b06c8dcffa32dcaa942714a305_normal.jpeg', name: 'Blogs of War', bio: 'National Security, intelligence, and technology news. Home to the @CovertContact Podcast. One of @TIME\'s Top 140 Twitter feeds of 2014.'}),
User.find_or_create_by({provider: 'twitter', uid: '28366439', username: 'SpyTalker', twitter: 'https://twitter.com/SpyTalker', avatar: 'http://pbs.twimg.com/profile_images/1572005387/image_normal.jpg', name: 'Jeff Stein', bio: 'NEWSWEEK SpyTalk columnist. Longtime national security reporter, editor at WaPo, CQ, UPI. I follow #CIA #FBI #NSA #ODNI'}),
User.find_or_create_by({provider: 'twitter', uid: '25502100', username: 'ArmedwScience', twitter: 'https://twitter.com/ArmedwScience', avatar: 'http://pbs.twimg.com/profile_images/378800000114577559/1ac3967a0034fe7deb496a4e4499a1f4_normal.png', name: 'Armed with Science', bio: 'U.S. Defense Department\'s science and technology blog. RTs are not endorsements. Science MATTERS.'})]

cyber_perspectives.each do |expert|
  cyber_issue.perspectives << expert
end


# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
net_issue = Issue.find_or_create_by({name: "Net Neutrality", description: ""})
tech_category.issues << net_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

net_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '14636374', username: 'superwuster', twitter: 'https://twitter.com/superwuster', avatar: 'http://pbs.twimg.com/profile_images/509963432854953984/NNbGKNcb_normal.jpeg', name: 'Tim Wu', bio: 'Professor at Columbia University, Net Neutrality, The Master Switch, occasional politician'}),
User.find_or_create_by({provider: 'twitter', uid: '4816', username: 'EFF', twitter: 'https://twitter.com/EFF', avatar: 'http://pbs.twimg.com/profile_images/529206082699137024/nPcjL5ym_normal.png', name: 'EFF', bio: 'We\'re the Electronic Frontier Foundation. We defend your civil liberties in a digital world.'}),
User.find_or_create_by({provider: 'twitter', uid: '245187760', username: 'KengJuan', twitter: 'https://twitter.com/KengJuan', avatar: 'http://pbs.twimg.com/profile_images/503681308099244032/1CUqkFVp_normal.png', name: 'Eric Han', bio: 'Wild & Crazy Kids participant. The Raul Mondesi of humor. Expert on Net Neutrality. Not James Franco.'}),
User.find_or_create_by({provider: 'twitter', uid: '14292458', username: 'freepress', twitter: 'https://twitter.com/freepress', avatar: 'http://pbs.twimg.com/profile_images/511921068475310080/BZ0ei_kE_normal.png', name: 'Free Press', bio: 'We’re a nonpartisan organization fighting for your rights to connect and communicate.'}),
User.find_or_create_by({provider: 'twitter', uid: '14229694', username: 'natnicol', twitter: 'https://twitter.com/natnicol', avatar: 'http://pbs.twimg.com/profile_images/455399493282713600/44Scy18Z_normal.jpeg', name: 'Natalie Nicol', bio: 'Attorney focused on Internet law and policy: online speech, IP, net neutrality, privacy. Former @berkmancenter, @EFF intern. @uchastingslaw, @Cronkite_ASU alum.'}),
User.find_or_create_by({provider: 'twitter', uid: '34049901', username: 'aaronmfisher', twitter: 'https://twitter.com/aaronmfisher', avatar: 'http://pbs.twimg.com/profile_images/531945734015184896/5VO18Q6q_normal.jpeg', name: 'Aaron M Fisher', bio: 'Advocate of Net Neutrality & Renewable Energy. Democrat. BA in Political Science. Currently: @WeAreSocial. Formerly: @Twitter and @WhiteHouse.Opinions are mine.'}),
User.find_or_create_by({provider: 'twitter', uid: '14428116', username: 'MadelineCarr', twitter: 'https://twitter.com/MadelineCarr', avatar: 'http://pbs.twimg.com/profile_images/516511667786510337/1uySajKz_normal.jpeg', name: 'MadelineCarr', bio: 'Researching the impact of the internet on international politics thru Internet Freedom, governance, cyber conflict and net neutrality.'}),
User.find_or_create_by({provider: 'twitter', uid: '271487544', username: 'larissashapiro', twitter: 'https://twitter.com/larissashapiro', avatar: 'http://pbs.twimg.com/profile_images/531671373504991234/oZLoQ5rN_normal.jpeg', name: 'Larissa Shapiro', bio: 'Community builder and Mozillian - I dig the open web, open culture, empowerment, net neutrality, parenting, autism awareness, gluten free cookies, music...'})]

net_perspectives.each do |expert|
  net_issue.perspectives << expert
end


# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
privacy_issue = Issue.find_or_create_by({name: "Internet Privacy", description: ""})
tech_category.issues << privacy_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

privacy_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '16076032', username: 'ggreenwald', twitter: 'https://twitter.com/ggreenwald', avatar: 'http://pbs.twimg.com/profile_images/418715960158068736/Lv1oLH3A_normal.jpeg', name: 'Glenn Greenwald', bio: 'Journalist with @The_Intercept - author, No Place to Hide - dog/animal fanatic - email/PGP public key (https://t.co/uJnK90oulZ)'}),
# User.find_or_create_by({provider: 'twitter', uid: '4816', username: 'EFF', twitter: 'https://twitter.com/EFF', avatar: 'http://pbs.twimg.com/profile_images/529206082699137024/nPcjL5ym_normal.png', name: 'EFF', bio: 'We\'re the Electronic Frontier Foundation. We defend your civil liberties in a digital world.'}),
User.find_or_create_by({provider: 'twitter', uid: '139409902', username: 'PrivacyMemes', twitter: 'https://twitter.com/PrivacyMemes', avatar: 'http://pbs.twimg.com/profile_images/895156502/PMprofile_normal.jpg', name: 'PrivacyMemes', bio: 'The pulse of online privacy.'}),
User.find_or_create_by({provider: 'twitter', uid: '12206102', username: 'PrivacyDigest', twitter: 'https://twitter.com/PrivacyDigest', avatar: 'http://pbs.twimg.com/profile_images/208206323/GreenLibertyHead_normal.jpg', name: 'PrivacyDigest', bio: 'Long time techie with an interest in the law and Basic Human & Civil Rights. A RT is NOT an endorsement. Visit FB page http://t.co/BT0gik9uXM so I can track you'}),
User.find_or_create_by({provider: 'twitter', uid: '14669471', username: 'csoghoian', twitter: 'https://twitter.com/csoghoian', avatar: 'http://pbs.twimg.com/profile_images/378800000723950844/386b29d0ac8506a0d916f7fa6634e4c8_normal.jpeg', name: 'Christopher Soghoian', bio: 'Principal Technologist, Speech, Privacy and Technology Project, ACLU. (Views expressed here are my own.)\r\nPGP: B887 4B0B ED9F 7B8F 8902 B474 5A7F 0E54 ECFE 0D70'}),
User.find_or_create_by({provider: 'twitter', uid: '40713876', username: 'jamesrbuk', twitter: 'https://twitter.com/jamesrbuk', avatar: 'http://pbs.twimg.com/profile_images/548437917094674432/uPjzTMOz_normal.jpeg', name: 'James Ball', bio: 'Special Projects Editor of the Guardian, sometime lecturer, occasional author. All tweets pre-screened by @JanineGibson. PGP: http://t.co/E9guISy3Nm'}),
User.find_or_create_by({provider: 'twitter', uid: '100564168', username: 'jduck', twitter: 'https://twitter.com/jduck', avatar: 'http://pbs.twimg.com/profile_images/482801491472678913/4GdmsdfQ_normal.png', name: 'Joshua J. Drake', bio: 'InfoSec Researcher, CTFer, Pwngrammer, Reverser, and former Skateboarder/BBoy. bitcoin: 1HbcsSQK32anaiNeHS7txD4DrEkH93Hnqr'}),
User.find_or_create_by({provider: 'twitter', uid: '1924682942', username: 'AGCrocker', twitter: 'https://twitter.com/AGCrocker', avatar: 'http://pbs.twimg.com/profile_images/537723554675298304/bAXmwWEX_normal.jpeg', name: 'Andrew Crocker', bio: 'Legal Fellow @EFF. Free speech, privacy, and doughnuts. Alum @berkmancenter and @nyucwp. Personal views only.'}),
User.find_or_create_by({provider: 'twitter', uid: '109898277', username: 'fpietrosanti', twitter: 'https://twitter.com/fpietrosanti', avatar: 'http://pbs.twimg.com/profile_images/467310991093411841/r4950tET_normal.jpeg', name: 'Fabio Pietrosanti', bio: 'Entrepreneur, Technologist, Transparency Advocate, Security Advisor, Privacy Activist. @HermesCenter, @GlobaLeaks, @Tor2web, Transparency International Italy'}),
User.find_or_create_by({provider: 'twitter', uid: '25160944', username: 'kashhill', twitter: 'https://twitter.com/kashhill', avatar: 'http://pbs.twimg.com/profile_images/469244768266907649/7BiZTGJA_normal.png', name: 'Kashmir Hill', bio: 'Writer. Traveler. Runner. Named after the song. Privacy pragmatist at @ThisisFusion. Priors: Forbes, Above The Law. DM: kashmir.hill@fusion.net'})]

privacy_perspectives.each do |expert|
  privacy_issue.perspectives << expert
end

