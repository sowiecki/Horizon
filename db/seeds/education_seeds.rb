# find_or_CREATE_by THIS CATEGORY
education_category = Category.find_or_create_by({name:"Education", description: "Major issues concerning public and private education."})

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
testing_issue = Issue.find_or_create_by({name: "Standardized Testing", description: "The latest news and analysis on standardized testing and the Common Core."})
education_category.issues << testing_issue

# find_or_CREATE_by THE EXPERTS THAT BELONG UNDER THIS ISSUE

testing_experts = [User.find_or_create_by({provider: 'twitter', uid: '14147479', username: '21stprincipal', twitter: 'https://twitter.com/21stprincipal', avatar: 'http://pbs.twimg.com/profile_images/530792816746586113/sSyx97fh_normal.jpeg', name: 'John Robinson', bio: 'High School Principal, Long-Time HS English Teacher, Avid Reader, Public School Advocate, Blogger. Views expressed here are my own.'}),
User.find_or_create_by({provider: 'twitter', uid: '2788894550', username: 'nmhs_principal', twitter: 'https://twitter.com/nmhs_principal', avatar: 'http://pbs.twimg.com/profile_images/507336891788558336/leliKGot_normal.jpeg', name: 'Eric Sheninger', bio: 'Former award winning principal of New Milford High School (NJ). Connect with Eric on Twitter at @E_Sheninger'}),
User.find_or_create_by({provider: 'twitter', uid: '56461930', username: 'robertjmarzano', twitter: 'https://twitter.com/robertjmarzano', avatar: 'http://pbs.twimg.com/profile_images/1541424128/bobmarzano_profile_normal.PNG', name: 'Robert J. Marzano', bio: 'Co-founder & CEO of @MarzanoResearch Laboratory. I translate research and theory into educational practice.'}),
User.find_or_create_by({provider: 'twitter', uid: '23326769', username: 'tdottawa', twitter: 'https://twitter.com/tdottawa', avatar: 'http://pbs.twimg.com/profile_images/460757163518865409/TW2NxK-D_normal.jpeg', name: 'Tom D\'Amico', bio: 'Teacher, Administrator - focus on Learning / Teaching in the 21C with a focus on EDtech, web 2.0, innovation, technology and creativity. Superintendent - OCSB'}),
User.find_or_create_by({provider: 'twitter', uid: '14907643', username: 'darcy1968', twitter: 'https://twitter.com/darcy1968', avatar: 'http://pbs.twimg.com/profile_images/544951611819167744/Di1xLq6S_normal.jpeg', name: 'Darcy Moore', bio: 'Learner, educator, deputy principal, English teacher, university lecturer, blogger, genealogist, Big History teacher, traveller & photographer.'}),
User.find_or_create_by({provider: 'twitter', uid: '18368680', username: 'gcouros', twitter: 'https://twitter.com/gcouros', avatar: 'http://pbs.twimg.com/profile_images/2577433685/9ob36ijk4926indjjs9y_normal.png', name: 'George Couros', bio: 'Division Principal of Innovative Teaching and Learning for  #PSD70. Speaker. Consultant. Dog-Lover. Legacy is not defined in what you have, but what you give.'}),
User.find_or_create_by({provider: 'twitter', uid: '18332376', username: 'mikeherrity', twitter: 'https://twitter.com/mikeherrity', avatar: 'http://pbs.twimg.com/profile_images/378800000424825108/5bce4c1865070a68c8147e136527327f_normal.jpeg', name: 'mikeherrity', bio: 'Deputy Headteacher of Twynham School in the UK, rated Outstanding April 2013. Educational Speaker and author of SharePoint in Education. SharePoint 2013 fan'}),
User.find_or_create_by({provider: 'twitter', uid: '21786831', username: 'hgse', twitter: 'https://twitter.com/hgse', avatar: 'http://pbs.twimg.com/profile_images/3222291276/7e5b2cc0751e99c15ff5d364140bdd8e_normal.png', name: 'Harvard Education', bio: 'The official Twitter feed of the Harvard Graduate School of Education'}),
User.find_or_create_by({provider: 'twitter', uid: '26546403', username: 'naesp', twitter: 'https://twitter.com/naesp', avatar: 'http://pbs.twimg.com/profile_images/537702834322427904/R8LdP5MQ_normal.png', name: 'NAESP', bio: 'National Association of Elementary School Principals: Serving all elementary and middle-level principals'})]

testing_experts.each do |expert|
  testing_issue.experts << expert
end

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
loans_issue = Issue.find_or_create_by({name: "Student Loans", description: "Major developments on the growing concern of student loans."})
education_category.issues << loans_issue

# find_or_CREATE_by THE EXPERTS THAT BELONG UNDER THIS ISSUE

loans_experts = [User.find_or_create_by({provider: 'twitter', uid: '15460202', username: 'kevin_corbett', twitter: 'https://twitter.com/kevin_corbett', avatar: 'http://pbs.twimg.com/profile_images/1417594286/kevin_twitter2_normal.jpg', name: 'Kevin Corbett', bio: '#elearning program developer, Kevin Corbett is interested in #mlearning, game-based design & #socialmedia in education. http://t.co/yMGLqa5dpl'}),
User.find_or_create_by({provider: 'twitter', uid: '21827584', username: 'web20classroom', twitter: 'https://twitter.com/web20classroom', avatar: 'http://pbs.twimg.com/profile_images/378800000182949199/b9ff259706f0924924150fc351bf97b4_normal.jpeg', name: 'Steven W. Anderson', bio: 'Educator, Speaker, Blogger, #Edchat Co-Creator, Author, Learning Evangelist, Dad, Edublogs Twitterer Of The Year, ASCD Emerging Leader, Top 50 Innovators in Edu'}),
User.find_or_create_by({provider: 'twitter', uid: '29655018', username: 'shellterrell', twitter: 'https://twitter.com/shellterrell', avatar: 'http://pbs.twimg.com/profile_images/551979532991741952/izW3TP2P_normal.jpeg', name: 'Shelly Sanchez ', bio: 'The 30 Goals Challenge author #30goalsEDU, NAPW Woman of the Year, teacher trainer, #Edchat founder, International speaker, #RoscothePug\'s mama'}),
User.find_or_create_by({provider: 'twitter', uid: '2902901', username: 'coolcatteacher', twitter: 'https://twitter.com/coolcatteacher', avatar: 'http://pbs.twimg.com/profile_images/2181575085/vick-change-size-white-background_normal.jpg', name: 'Vicki Davis', bio: 'I love students! Best teacher blog winner * Mom * Speaker * AUTHOR Reinventing Writing * HOST Every Classroom Matters * a @Mashable Top Teacher on Twitter'}),
User.find_or_create_by({provider: 'twitter', uid: '5388852', username: 'hrheingold', twitter: 'https://twitter.com/hrheingold', avatar: 'http://pbs.twimg.com/profile_images/463927092460015617/_PT93EfX_normal.jpeg', name: 'Howard Rheingold', bio: 'Independent thinker, online instigator, novice educator, expert learner, offline gardener.'}),
User.find_or_create_by({provider: 'twitter', uid: '15490522', username: 'ryantracey', twitter: 'https://twitter.com/ryantracey', avatar: 'http://pbs.twimg.com/profile_images/544318928965492736/H7rgemWc_normal.png', name: 'Ryan Tracey', bio: 'E-Learning Provocateur'}),
User.find_or_create_by({provider: 'twitter', uid: '739293', username: 'courosa', twitter: 'https://twitter.com/courosa', avatar: 'http://pbs.twimg.com/profile_images/480186733221249027/bzI2RIfo_normal.jpeg', name: ' Alec Couros', bio: 'Professor of #edtech & #media, #education researcher, #consultant, #connected educator, keynote #speaker & #open scholar - Faculty of Ed., University of Regina.'}),
User.find_or_create_by({provider: 'twitter', uid: '25388528', username: 'audreywatters', twitter: 'https://twitter.com/audreywatters', avatar: 'http://pbs.twimg.com/profile_images/547608948656717824/X-VEN2qt_normal.jpeg', name: 'Audrey Watters', bio: 'education writer, recovering academic, serial dropout, ed-tech\'s Cassandra, author of The Monsters of Education Technology. (And coming soon: Teaching Machines)'}),
User.find_or_create_by({provider: 'twitter', uid: '45955381', username: 'betamiller', twitter: 'https://twitter.com/betamiller', avatar: 'http://pbs.twimg.com/profile_images/460179395563356160/LafHW7_B_normal.jpeg', name: 'Andrew Miller', bio: 'BIE and ASCD Faculty and Educational Consultant. PBL, Blended Learning, Assessment, Student Engagement, Ed Tech, 21st Century Skills. Edutopia Blogger'}),
User.find_or_create_by({provider: 'twitter', uid: '17087753', username: 'dianadell', twitter: 'https://twitter.com/dianadell', avatar: 'http://pbs.twimg.com/profile_images/1853950207/dianacrop_normal.jpg', name: 'Diana Dell, Ph.D', bio: 'Educational technology consultant, learning games and activities @ http://t.co/icx8iXtvWY, Moodle, iPads, GCT, eMINTS'})]

loans_experts.each do |expert|
  loans_issue.experts << expert
end

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
privatization_issue = Issue.find_or_create_by({name: "Privatization", description: "The current state and impact of privatized education."})
education_category.issues << privatization_issue

# find_or_CREATE_by THE EXPERTS THAT BELONG UNDER THIS ISSUE

privatization_experts = [User.find_or_create_by({provider: 'twitter', uid: '12413032', username: 'chronicle', twitter: 'https://twitter.com/chronicle', avatar: 'http://pbs.twimg.com/profile_images/2263651251/che_twitter_053012_normal.png', name: 'Chronicle', bio: 'The Chronicle of Higher Education—The leading news source for higher education.'}),
User.find_or_create_by({provider: 'twitter', uid: '43107557', username: 'nsriazat', twitter: 'https://twitter.com/nsriazat', avatar: 'http://pbs.twimg.com/profile_images/1175594368/large_nasima_riazat_normal.jpg', name: 'Nasima Riazat', bio: '#PhDchat moderator. PhD research themes: capacity building, distributed leadership, leadership sciences, developing middle leaders - Open University UK'}),
User.find_or_create_by({provider: 'twitter', uid: '41595481', username: 'biddy_martin', twitter: 'https://twitter.com/biddy_martin', avatar: 'http://pbs.twimg.com/profile_images/1448480356/Biddy_portrait128x128_normal.jpg', name: 'Biddy Martin', bio: 'The official account of Amherst College President Biddy Martin'}),
User.find_or_create_by({provider: 'twitter', uid: '17762060', username: 'tomwhitby', twitter: 'https://twitter.com/tomwhitby', avatar: 'http://pbs.twimg.com/profile_images/601591035/twitter_pic_1__normal.jpg', name: 'Tom Whitby', bio: 'Author,Blogger, HS/MS Tchr 34 yrs, HigherEd 6 yrs.Founder #Edchat, EDU PLN,Edchat Radio, 6 Linkedin Edu Grps. BLOG My Island View http://t.co/ZKlpqrApae'}),
User.find_or_create_by({provider: 'twitter', uid: '16857753', username: 'womeninhighered', twitter: 'https://twitter.com/womeninhighered', avatar: 'http://pbs.twimg.com/profile_images/2311167254/w9438br2rc9aejamv5a4_normal.jpeg', name: 'Women in Higher Ed', bio: 'Only national monthly dedicated to enlightening, encouraging, empowering & enraging women on campus. You can find our editor at @lianamsilva'}),
User.find_or_create_by({provider: 'twitter', uid: '22391005', username: 'aaronporter', twitter: 'https://twitter.com/aaronporter', avatar: 'http://pbs.twimg.com/profile_images/1255913994/Politics_Show_South_normal.jpg', name: 'Aaron Porter', bio: 'Education consultant & Director External Affairs @NCUBtweets. \nFormer President, @NUSuk. Hon. Doctor of Laws @uniofleicester #cpfc #football #theatre'}),
User.find_or_create_by({provider: 'twitter', uid: '15432179', username: 'raulpacheco', twitter: 'https://twitter.com/raulpacheco', avatar: 'http://pbs.twimg.com/profile_images/458684763318919168/v1c5YN7S_normal.jpeg', name: 'Dr Raul Pacheco-Vega', bio: 'Professor @NotiCIDE Water governance, public policy, environmental politics, experimental methods, North America. #ScholarSunday founder. Coffee lover.'}),
User.find_or_create_by({provider: 'twitter', uid: '252124716', username: 'gdnhighered', twitter: 'https://twitter.com/gdnhighered', avatar: 'http://pbs.twimg.com/profile_images/2998159249/735f62821895b6eb436e1a2a13ea441b_normal.png', name: 'Higher Education', bio: 'The Guardian Higher Education Network is an online community for everyone working in, or with, HE. News, views and professional debate. Tweets by @clurshaw'}),
User.find_or_create_by({provider: 'twitter', uid: '23602600', username: 'timeshighered', twitter: 'https://twitter.com/timeshighered', avatar: 'http://pbs.twimg.com/profile_images/956489517/the_normal.png', name: 'TimesHigherEducation', bio: 'Global higher education news, views and reviews. Publisher of the Times Higher Education World University Rankings (@THEworldunirank)'}),
User.find_or_create_by({provider: 'twitter', uid: '15051291', username: 'thejlv', twitter: 'https://twitter.com/thejlv', avatar: 'http://pbs.twimg.com/profile_images/510812318041526272/mgqqiLjY_normal.png', name: 'Jose Vilson', bio: 'The teacher Gotham deserves. Author of This Is Not A Test. No longer invisible. #notatest #EduColor'}),
User.find_or_create_by({provider: 'twitter', uid: '157273341', username: 'equal_education', twitter: 'https://twitter.com/equal_education', avatar: 'http://pbs.twimg.com/profile_images/378800000085752460/72f7d3217758f9c0ae9378cc703a801f_normal.jpeg', name: 'Equal Education', bio: 'A movement striving for quality and equality in South Africa\'s education system through analysis and activism. Every generation has its struggle #fixourschools'})]

privatization_experts.each do |expert|
  privatization_issue.experts << expert
end
