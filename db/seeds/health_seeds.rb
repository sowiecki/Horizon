# find_or_CREATE_by THIS health_category ('Health')
health_category = Category.find_or_create_by({name:"Health", description: "Major issues concerning public health and wellness."})

# find_or_CREATE_by THE ISSUE 'Healthcare' AND PUT IT UNDER THIS health_category
care_issue = Issue.find_or_create_by({name: "Healthcare", description: ""})
health_category.issues << care_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE
expert = User.find_or_create_by({provider: 'twitter', uid: '229888557', username: 'atriushealth', twitter: 'https://twitter.com/atriushealth', avatar: 'http://pbs.twimg.com/profile_images/1220228529/AtriusHealthTwitter_normal.png', name: 'Atrius Health', bio: 'Leader in transforming the healthcare delivery system, payment reform, Pioneer ACO, use of EHR and quality'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '17439693', username: 'andrewspong', twitter: 'https://twitter.com/andrewspong', avatar: 'http://pbs.twimg.com/profile_images/3753569821/bb0d8aac831cc94cf210be189d0bd2eb_normal.jpeg', name: 'Andrew Spong', bio: 'Healthcare is getting better. Working with pharma, patient associations, & agencies. MD, STweM. One-third @Digitally_Sick.'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '6794502', username: 'PublicHealth', twitter: 'https://twitter.com/PublicHealth', avatar: 'http://pbs.twimg.com/profile_images/378800000689227713/e1a85fa774ec719d4603208adc9a3eba_normal.png', name: 'APHA', bio: 'Official account of the American Public Health Association: For science. For action. For health.'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '233364902', username: 'atul_gawande', twitter: 'https://twitter.com/atul_gawande', avatar: 'http://pbs.twimg.com/profile_images/526917220241137664/8KF6mJxn_normal.jpeg', name: 'Atul Gawande', bio: 'Surgeon, Writer, Researcher, Dilettante.'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '1180070852', username: 'hc_thejournal', twitter: 'https://twitter.com/hc_thejournal', avatar: 'http://pbs.twimg.com/profile_images/3346598018/dd2212dae71b4c6f3fae3e8f443ac155_normal.jpeg', name: 'Healthcare', bio: 'Healthcare: The Journal of Delivery Science and Innovation\r\nRT≠endorsement'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '1360077600', username: 'sacjai', twitter: 'https://twitter.com/sacjai', avatar: 'http://pbs.twimg.com/profile_images/474914253951225857/UHW1lpGz_normal.jpeg', name: 'Sachin H. Jain', bio: 'CMO @CareMoreHealth; @Harvard faculty; Co-Editor-in-Chief, @hc_thejournal; ex-Obama Senior Advisor, @CMSgov & @ONC_healthIT. @Yankees fan. Opinions my own.'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '879161563', username: 'cmichaelgibson', twitter: 'https://twitter.com/cmichaelgibson', avatar: 'http://pbs.twimg.com/profile_images/2984843636/4d4178f5c23492b2785e400e9ebf2c77_normal.jpeg', name: 'C. Michael Gibson MD', bio: 'Founder & Chairman Of http://t.co/UEQRk3oxcU A Free UptoDate Copyleft Medical Textbook | RT ≠ endorse | Disclaimer here: http://t.co/GcAgl71R5E'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '16429603', username: 'healthblawg', twitter: 'https://twitter.com/healthblawg', avatar: 'http://pbs.twimg.com/profile_images/3759171623/c4fa7d71c7e735fba302e53fe92fad7d_normal.jpeg', name: 'David Harlow', bio: 'Health Care Lawyer, Consultant, Speaker, Blogger http://t.co/uUyzPhKIig Tweets are tweets: no more, no less.'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '18170896', username: 'drsanjaygupta', twitter: 'https://twitter.com/drsanjaygupta', avatar: 'http://pbs.twimg.com/profile_images/512747456442818560/nQc8NBRD_normal.jpeg', name: 'Dr. Sanjay Gupta', bio: 'Staff Neurosurgeon, Emory Clinic; CNN Chief Medical Correspondent'})
care_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '11274452', username: 'kevinmd', twitter: 'https://twitter.com/kevinmd', avatar: 'http://pbs.twimg.com/profile_images/1182717255/Kevin2_WEB_normal.jpg', name: 'Kevin Pho, M.D.', bio: 'Physician, author, keynote speaker, USA TODAY\'s Board of Contributors. Social media\'s leading physician voice. http://t.co/MlC37Wze and http://t.co/hThNxwTt'})

# find_or_CREATE_by THIS ISSUE AND PUT IT UNDER THIS CATEGORY
vax_issue = Issue.find_or_create_by({name: "Vaccinations", description: ""})
health_category.issues << vax_issue


# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

expert = User.find_or_create_by({provider: 'twitter', uid: '233364902', username: 'atul_gawande', twitter: 'https://twitter.com/atul_gawande', avatar: 'http://pbs.twimg.com/profile_images/526917220241137664/8KF6mJxn_normal.jpeg', name: 'Atul Gawande', bio: 'Surgeon, Writer, Researcher, Dilettante.'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '11274452', username: 'kevinmd', twitter: 'https://twitter.com/kevinmd', avatar: 'http://pbs.twimg.com/profile_images/1182717255/Kevin2_WEB_normal.jpg', name: 'Kevin Pho, M.D.', bio: 'Physician, author, keynote speaker, USA TODAY\'s Board of Contributors. Social media\'s leading physician voice. http://t.co/MlC37Wze and http://t.co/hThNxwTt'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '27013292', username: 'thelancet', twitter: 'https://twitter.com/thelancet', avatar: 'http://pbs.twimg.com/profile_images/378800000725668351/16bf102fc319d621a456d9f821071253_normal.jpeg', name: 'The Lancet', bio: 'Welcome to The Lancet on Twitter. Keep in touch with The Lancet, one of the world\'s leading general medical journals, published weekly since 1823.'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '75044835', username: 'orinlevine', twitter: 'https://twitter.com/orinlevine', avatar: 'http://pbs.twimg.com/profile_images/546512823690350593/DQEJVIZ7_normal.png', name: 'Orin Levine', bio: 'Vaccines, global health, researcher, advocate, father, husband, fly fisher. Tweets are my own.'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '205670342', username: 'vaccinestoday', twitter: 'https://twitter.com/vaccinestoday', avatar: 'http://pbs.twimg.com/profile_images/1150063383/logo2_normal.jpg', name: 'VaccinesToday', bio: 'Vaccines Today is an online platform, supported by Vaccines Europe, for discussing vaccines and vaccination. https://t.co/ckNSSCQJxz'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '39130793', username: 'anniedotson', twitter: 'https://twitter.com/anniedotson', avatar: 'http://pbs.twimg.com/profile_images/2428910966/dqikekhx5l5cr1gsz882_normal.jpeg', name: 'Annie Dotson', bio: 'family med | public health epidemiologist |  teacher | social justice enthusiast | avid traveler | Carolinian'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '18170896', username: 'drsanjaygupta', twitter: 'https://twitter.com/drsanjaygupta', avatar: 'http://pbs.twimg.com/profile_images/512747456442818560/nQc8NBRD_normal.jpeg', name: 'Dr. Sanjay Gupta', bio: 'Staff Neurosurgeon, Emory Clinic; CNN Chief Medical Correspondent'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '1180070852', username: 'hc_thejournal', twitter: 'https://twitter.com/hc_thejournal', avatar: 'http://pbs.twimg.com/profile_images/3346598018/dd2212dae71b4c6f3fae3e8f443ac155_normal.jpeg', name: 'Healthcare', bio: 'Healthcare: The Journal of Delivery Science and Innovation\r\nRT≠endorsement'})
vax_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '16348549', username: 'onecampaign', twitter: 'https://twitter.com/onecampaign', avatar: 'http://pbs.twimg.com/profile_images/553288704454701057/WPpw-ZK1_normal.jpeg', name: 'ONE', bio: 'ONE is a campaigning and advocacy organization of more than 6 million people taking action to end extreme poverty & preventable disease, particularly in Africa.'})
vax_issue.perspectives << expert


# find_or_CREATE_by THIS ISSUE AND PUT IT UNDER THIS health_category
obesity_issue = Issue.find_or_create_by({name: "Obesity", description: ""})
health_category.issues << obesity_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

expert = User.find_or_create_by({provider: 'twitter', uid: '8432582', username: 'bigzigfitness', twitter: 'https://twitter.com/bigzigfitness', avatar: 'http://pbs.twimg.com/profile_images/344513261577614055/49cf57b8f12d23685ce5b04ecd68a76a_normal.jpeg', name: 'Gene ', bio: 'Father, brother, son, #LiveWithFire #NASM CPT #FitFluential Ambassador #RN #PoweredByBits #DrinkCocogo OPINIONS ARE MINE\nIG @bigzigfitness FB BigZigFitness'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '36684314', username: 'obesitysociety', twitter: 'https://twitter.com/obesitysociety', avatar: 'http://pbs.twimg.com/profile_images/473493740221255680/HRi1jw3M_normal.png', name: 'The Obesity Society', bio: 'To advance the science-based understanding of the causes, consequences, prevention and treatment of obesity'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '132295107', username: 'kidseatright', twitter: 'https://twitter.com/kidseatright', avatar: 'http://pbs.twimg.com/profile_images/471730193212526592/_tCyhMNO_normal.jpeg', name: 'Kids Eat Right', bio: 'A national campaign of the Academy of Nutrition and Dietetics and its Foundation to promote healthy eating and prevent childhood obesity.'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '96786749', username: 'ywmoac', twitter: 'https://twitter.com/ywmoac', avatar: 'http://pbs.twimg.com/profile_images/469200000145031169/RapWOdly_normal.png', name: 'Your Weight Matters', bio: 'The Your Weight Matters Campaign is a national health and weight awareness initiative launched by the Obesity Action Coalition (OAC).'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '27013292', username: 'thelancet', twitter: 'https://twitter.com/thelancet', avatar: 'http://pbs.twimg.com/profile_images/378800000725668351/16bf102fc319d621a456d9f821071253_normal.jpeg', name: 'The Lancet', bio: 'Welcome to The Lancet on Twitter. Keep in touch with The Lancet, one of the world\'s leading general medical journals, published weekly since 1823.'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '16833168', username: 'drsharma', twitter: 'https://twitter.com/drsharma', avatar: 'http://pbs.twimg.com/profile_images/2546123642/hpgy7tlfs0vaprtqkxlz_normal.jpeg', name: 'Dr Arya M. Sharma', bio: 'Chair of Obesity Research and Mangement, University of Alberta'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '129802371', username: 'fatboythinman', twitter: 'https://twitter.com/fatboythinman', avatar: 'http://pbs.twimg.com/profile_images/484995018831036416/WZe1dEbH_normal.jpeg', name: 'Michael Prager', bio: 'Sustainable Business From Sustainable Health. Hire me to share these ideas with your group: http://t.co/hGL7oIbklP'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '253119183', username: 'momamiatx', twitter: 'https://twitter.com/momamiatx', avatar: 'http://pbs.twimg.com/profile_images/1246275420/MFS_HEADSHOT_normal.jpg', name: 'michelle smith', bio: 'school health advocate - believe eating healthy and being active are essential to student success in school. Healthy kids learn better!'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '23171399', username: 'fat_rejection', twitter: 'https://twitter.com/fat_rejection', avatar: 'http://pbs.twimg.com/profile_images/267465443/fatjectiongreen_normal.jpg', name: 'Fat rejection', bio: 'A frank discussion of diets and health. Coated in stevia instead of sugar. Questions welcome!'})
obesity_issue.perspectives << expert

expert = User.find_or_create_by({provider: 'twitter', uid: '139846711', username: 'obesityblog', twitter: 'https://twitter.com/obesityblog', avatar: 'http://pbs.twimg.com/profile_images/871400318/Pretlow_twitter_pic_normal.jpg', name: 'Robert Pretlow, MD', bio: 'Pediatrician, obesity specialist, author of the new book Overweight: What Kids Say. Resources for health professionals, parents, teachers, counselors and kids.'})
obesity_issue.perspectives << expert
