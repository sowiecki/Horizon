# CREATE THIS CATEGORY
sports_category = Category.create({name:"Sports", description: "Major issues concerning technology and the internet."})

# CREATE THE ISSUE AND PUT IT UNDER THIS CATEGORY
amat_issue = Issue.create({name: "Amateurism", description: ""})
sports_category.issues << amat_issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE

amat_experts = [User.create({provider: 'twitter', uid: '55253484', username: 'sportsbizmiss', twitter: 'https://twitter.com/sportsbizmiss', avatar: 'http://pbs.twimg.com/profile_images/528525572142428160/pS6dyS-o_normal.jpeg', name: 'Kristi Dosh', bio: 'Cover sports biz for @CampusInsiders and @theoktc (ESPN & Forbes alum), VP at @Rep_Ink & attorney. Author of biz of college fball book: Saturday Millionaires.'}),
User.create({provider: 'twitter', uid: '279270074', username: 'patrick_hruby', twitter: 'https://twitter.com/patrick_hruby', avatar: 'http://pbs.twimg.com/profile_images/483614193786966017/sU8APc3N_normal.jpeg', name: 'Patrick Hruby', bio: 'Contributing Editor, Vice Sports; contributor to Washingtonian magazine, elsewhere; former Georgetown professor; ambulatory.'}),
User.create({provider: 'twitter', uid: '32765534', username: 'billsimmons', twitter: 'https://twitter.com/billsimmons', avatar: 'http://pbs.twimg.com/profile_images/2416051975/a8riusej2c5rcf8rrfj9_normal.jpeg', name: 'Bill Simmons', bio: 'Grantland boss + columnist, @30for30 co-creator, Grantland Basketball Hour host, BS Report host, author of http://t.co/MGP3udcK. Facebook: http://t.co/PEczRi3i'}),
User.create({provider: 'twitter', uid: '24580952', username: 'jeremyschaap', twitter: 'https://twitter.com/jeremyschaap', avatar: 'http://pbs.twimg.com/profile_images/489874980151119874/VG18v_cq_normal.jpeg', name: 'Jeremy Schaap', bio: 'We have met the enemy and he is us.'}),
User.create({provider: 'twitter', uid: '40892016', username: 'jaybilas', twitter: 'https://twitter.com/jaybilas', avatar: 'http://pbs.twimg.com/profile_images/3785724771/a2f9f50b4a02f9094430292888716a57_normal.png', name: 'Jay Bilas', bio: 'ESPN Analyst, attorney Moore and Van Allen, PLLC. President, Hair Club for Men. All opinions expressed here are mine, and should be adopted by you immediately.'}),
User.create({provider: 'twitter', uid: '25019638', username: 'richarddeitsch', twitter: 'https://twitter.com/richarddeitsch', avatar: 'http://pbs.twimg.com/profile_images/550905796330938370/oU4zFY0X_normal.jpeg', name: 'Richard Deitsch', bio: 'Writer/Reporter for Sports illustrated and @sinow; adjunct at @columbiajourn, alum of @UMKnightWallace; fan of Ann Arbor, Buffalo and New York. Father of twins.'}),
User.create({provider: 'twitter', uid: '50772918', username: 'claytravisbgid', twitter: 'https://twitter.com/claytravisbgid', avatar: 'http://pbs.twimg.com/profile_images/479824106460676097/1DSgBg5__normal.jpeg', name: 'Clay Travis', bio: 'Author of Dixieland Delight & On Rocky Top, writer at http://t.co/tXwbcy57r3, TV with @foxsports1, dad of three boys, lawyer'}),
User.create({provider: 'twitter', uid: '47848627', username: 'danwetzel', twitter: 'https://twitter.com/danwetzel', avatar: 'http://pbs.twimg.com/profile_images/533451813560008705/murqqkJf_normal.jpeg', name: 'Dan Wetzel', bio: 'Yahoo Sports columnist. NYT best selling author. Husband. Father. Fan of the South Oakland Storm.'})]

amat_experts.each do |expert|
  amat_issue.experts << expert
end

# CREATE THE ISSUE AND PUT IT UNDER THIS CATEGORY
ped_issue = Issue.create({name: "Performance-Enhancing Drugs", description: ""})
sports_category.issues << ped_issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE

ped_experts = [User.create({provider: 'twitter', uid: '279270074', username: 'patrick_hruby', twitter: 'https://twitter.com/patrick_hruby', avatar: 'http://pbs.twimg.com/profile_images/483614193786966017/sU8APc3N_normal.jpeg', name: 'Patrick Hruby', bio: 'Contributing Editor, Vice Sports; contributor to Washingtonian magazine, elsewhere; former Georgetown professor; ambulatory.'}),
User.create({provider: 'twitter', uid: '2290582400', username: 'sportsethics', twitter: 'https://twitter.com/sportsethics', avatar: 'http://pbs.twimg.com/profile_images/423260147788423168/SYflu4cw_normal.jpeg', name: 'SportsEthics', bio: 'Ethics in Sports is a Serious Matter, but Talking about it doesn\'t have to be Business As Usual!  Follow Chuck Gallagher\'s tweets on http://t.co/r4KiG6Zkfy.'}),
User.create({provider: 'twitter', uid: '41646662', username: 'bnightengale', twitter: 'https://twitter.com/bnightengale', avatar: 'http://pbs.twimg.com/profile_images/318621659/bobs_twittericon_normal.jpg', name: 'Bob Nightengale', bio: 'USA TODAY Sports Major League Baseball columnist'}),
User.create({provider: 'twitter', uid: '24580952', username: 'jeremyschaap', twitter: 'https://twitter.com/jeremyschaap', avatar: 'http://pbs.twimg.com/profile_images/489874980151119874/VG18v_cq_normal.jpeg', name: 'Jeremy Schaap', bio: 'We have met the enemy and he is us.'}),
User.create({provider: 'twitter', uid: '32135704', username: 'si_peterking', twitter: 'https://twitter.com/si_peterking', avatar: 'http://pbs.twimg.com/profile_images/550348362080194561/oqBpa3pB_normal.jpeg', name: 'Peter King', bio: 'Long live Bailey.'}),
User.create({provider: 'twitter', uid: '25019638', username: 'richarddeitsch', twitter: 'https://twitter.com/richarddeitsch', avatar: 'http://pbs.twimg.com/profile_images/550905796330938370/oU4zFY0X_normal.jpeg', name: 'Richard Deitsch', bio: 'Writer/Reporter for Sports illustrated and @sinow; adjunct at @columbiajourn, alum of @UMKnightWallace; fan of Ann Arbor, Buffalo and New York. Father of twins.'}),
User.create({provider: 'twitter', uid: '88763317', username: 'buster_espn', twitter: 'https://twitter.com/buster_espn', avatar: 'http://pbs.twimg.com/profile_images/2620118839/5tcmrdbaddfsxq7pt6uq_normal.png', name: 'Buster Olney', bio: 'Senior baseball writer for ESPN The Magazine'}),
User.create({provider: 'twitter', uid: '37669435', username: 'andrewmarchand', twitter: 'https://twitter.com/andrewmarchand', avatar: 'http://pbs.twimg.com/profile_images/378800000740208855/f717c76237f80d188a1876a2028c73f5_normal.jpeg', name: 'Andrew Marchand', bio: 'ESPN New York, Sr. Writer'})]

ped_experts.each do |expert|
  ped_issue.experts << expert
end


# CREATE THE ISSUE AND PUT IT UNDER THIS CATEGORY
injury_issue = Issue.create({name: "Concussions and Injuries", description: ""})
sports_category.issues << injury_issue

# CREATE THE EXPERTS THAT BELONG UNDER THIS ISSUE

injury_experts = [User.create({provider: 'twitter', uid: '279270074', username: 'patrick_hruby', twitter: 'https://twitter.com/patrick_hruby', avatar: 'http://pbs.twimg.com/profile_images/483614193786966017/sU8APc3N_normal.jpeg', name: 'Patrick Hruby', bio: 'Contributing Editor, Vice Sports; contributor to Washingtonian magazine, elsewhere; former Georgetown professor; ambulatory.'}),
User.create({provider: 'twitter', uid: '18170896', username: 'drsanjaygupta', twitter: 'https://twitter.com/drsanjaygupta', avatar: 'http://pbs.twimg.com/profile_images/512747456442818560/nQc8NBRD_normal.jpeg', name: 'Dr. Sanjay Gupta', bio: 'Staff Neurosurgeon, Emory Clinic; CNN Chief Medical Correspondent'}),
User.create({provider: 'twitter', uid: '21423021', username: 'noahwg', twitter: 'https://twitter.com/noahwg', avatar: 'http://pbs.twimg.com/profile_images/551873462198079489/hcSb4xB2_normal.jpeg', name: 'Noah Gray', bio: 'Senior Editor @nature | Huge fan of @FrontYoungMinds. These thoughts are mine alone since nobody else will take responsibility.'}),
User.create({provider: 'twitter', uid: '273766668', username: 'drrobertklapper', twitter: 'https://twitter.com/drrobertklapper', avatar: 'http://pbs.twimg.com/profile_images/1291015615/Screen_shot_2011-03-28_at_8.43.16_PM_normal.png', name: 'Dr. Robert Klapper', bio: 'Orthopedic Surgeon,ESPN Radio Host,FOX Sports 1 TV Analyst,Marble Sculptor,Surfer,Author,Patented Inventor'}),
User.create({provider: 'twitter', uid: '24580952', username: 'jeremyschaap', twitter: 'https://twitter.com/jeremyschaap', avatar: 'http://pbs.twimg.com/profile_images/489874980151119874/VG18v_cq_normal.jpeg', name: 'Jeremy Schaap', bio: 'We have met the enemy and he is us.'}),
User.create({provider: 'twitter', uid: '32135704', username: 'si_peterking', twitter: 'https://twitter.com/si_peterking', avatar: 'http://pbs.twimg.com/profile_images/550348362080194561/oqBpa3pB_normal.jpeg', name: 'Peter King', bio: 'Long live Bailey.'}),
User.create({provider: 'twitter', uid: '28870086', username: 'mortreport', twitter: 'https://twitter.com/mortreport', avatar: 'http://pbs.twimg.com/profile_images/521886048486305793/v7zgvIcC_normal.jpeg', name: 'Chris Mortensen', bio: 'Christian, Husband, Father, Veteran...once covered George Brett in high school for The Daily Breeze. ..Avatar is son Alex handing off to Run DMC at Arkansas'}),
User.create({provider: 'twitter', uid: '25019638', username: 'richarddeitsch', twitter: 'https://twitter.com/richarddeitsch', avatar: 'http://pbs.twimg.com/profile_images/550905796330938370/oU4zFY0X_normal.jpeg', name: 'Richard Deitsch', bio: 'Writer/Reporter for Sports illustrated and @sinow; adjunct at @columbiajourn, alum of @UMKnightWallace; fan of Ann Arbor, Buffalo and New York. Father of twins.'}),
User.create({provider: 'twitter', uid: '365506316', username: 'nflconcussions', twitter: 'https://twitter.com/nflconcussions', avatar: 'http://pbs.twimg.com/profile_images/2146808139/tecmo_normal.png', name: 'NFL Concussions', bio: 'Chronicling every publicly-disclosed concussion in the NFL. (Not affiliated with the NFL.)'}),
User.create({provider: 'twitter', uid: '61520340', username: 'eric_edholm', twitter: 'https://twitter.com/eric_edholm', avatar: 'http://pbs.twimg.com/profile_images/339747935/radio_pic_normal.jpg', name: 'Eric Edholm', bio: 'NFL writer, Yahoo Sports, Shutdown Corner. Football analyst (NFL, college, fantasy), 120 Sports.'})]

injury_experts.each do |expert|
  injury_issue.experts << expert
end