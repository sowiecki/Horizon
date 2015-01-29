# find_or_CREATE_by THIS CATEGORY
business_category = Category.find_or_create_by({name:"Business", description: "Major issues concerning business and finance."})

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
regulation_issue = Issue.find_or_create_by({name: "Regulation", description: "Perspectives on the politics and consequences of economic regulation."})
business_category.issues << regulation_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

regulation_perspectives = [User.create({provider: 'twitter', uid: '17997789', username: 'danariely', twitter: 'https://twitter.com/danariely', avatar: 'http://pbs.twimg.com/profile_images/3079991122/885ba5efe97fcfd916001b8374d0d75c_normal.jpeg', name: 'Dan Ariely', bio: 'Professor of Psychology and Behavioral Economics'}),
User.find_or_create_by({provider: 'twitter', uid: '345504143', username: 'PankajGhemawat', twitter: 'https://twitter.com/PankajGhemawat', avatar: 'http://pbs.twimg.com/profile_images/469884794088599554/mMr2MLGv_normal.jpeg', name: 'Pankaj Ghemawat', bio: 'Professor at NYU Stern & IESE Business School, author of World 3.0 and Redefining Global Strategy, youngest “guru” on The Economist top management thinkers list'}),
User.find_or_create_by({provider: 'twitter', uid: '17006157', username: 'NYTimeskrugman', twitter: 'https://twitter.com/NYTimeskrugman', avatar: 'http://pbs.twimg.com/profile_images/2044852218/NYT_Twitter_Krugman_normal.png', name: 'Paul Krugman', bio: 'Nobel laureate. Op-Ed columnist, @nytopinion. Author, “The Return of Depression Economics,” “The Great Unraveling,” “The Age of Diminished Expectations” + more.'}),
User.find_or_create_by({provider: 'twitter', uid: '21660877', username: 'StephanieDhue', twitter: 'https://twitter.com/StephanieDhue', avatar: 'http://pbs.twimg.com/profile_images/378800000372316644/23c31a4aaf3e375ad2c20480a600a3e8_normal.jpeg', name: 'Stephanie Dhue', bio: 'Producer at CNBC.  I follow real estate, regulatory & fed policy, politics.  My tweets, links & retweets  reflect my opinion & not those of my employer.'}),
User.find_or_create_by({provider: 'twitter', uid: '124905381', username: 'collingwoodllc', twitter: 'https://twitter.com/collingwoodllc', avatar: 'http://pbs.twimg.com/profile_images/3495445879/50dbe2dc94ff72ce1b96512632689e04_normal.jpeg', name: 'Tim Rood', bio: 'Housing policy advisor, expert, and media contributor. Advise housing agencies, regulators, and financial institutions.'}),
User.find_or_create_by({provider: 'twitter', uid: '1534167900', username: 'Carl_C_Icahn', twitter: 'https://twitter.com/Carl_C_Icahn', avatar: 'http://pbs.twimg.com/profile_images/378800000021016777/1d530fa4b92b883270c5bdd7583ed073_normal.jpeg', name: 'Carl Icahn', bio: 'Chairman of Icahn Enterprises L.P.; etc., etc.              Some people get rich studying artificial intelligence.  Me, I make money studying natural stupidity.'}),
User.find_or_create_by({provider: 'twitter', uid: '25330246', username: 'boonepickens', twitter: 'https://twitter.com/boonepickens', avatar: 'http://pbs.twimg.com/profile_images/3366851082/dbe92dbca0868c55562f063cbb921295_normal.jpeg', name: 'T. Boone Pickens', bio: 'T. Boone Pickens\' official Twitter account, updated by Boone and members of his team. For more Pickens Plan news, follow @PickensPlan.'}),
User.find_or_create_by({provider: 'twitter', uid: '208155240', username: 'MariaBartiromo', twitter: 'https://twitter.com/MariaBartiromo', avatar: 'http://pbs.twimg.com/profile_images/378800000813078329/c685d4f8043b2ac4ca43b4f4224b6403_normal.jpeg', name: 'Maria Bartiromo ', bio: 'Anchor, Global Markets Editor - @OpeningBellFBN w/ Maria Bartiromo 9-11am ET M-F on @FoxBusiness Network  & @SundayFutures 10:00am ET Sundays  on @FoxNews.'}),
User.find_or_create_by({provider: 'twitter', uid: '217284148', username: 'Austan_Goolsbee', twitter: 'https://twitter.com/Austan_Goolsbee', avatar: 'http://pbs.twimg.com/profile_images/1752779330/Image_normal.JPG', name: 'Austan Goolsbee', bio: 'Econ prof at U.Chicago\'s Booth School of Business and former Chairman of the Council of Economic Advisers. Strategic partner, @32Advisors'}),
User.find_or_create_by({provider: 'twitter', uid: '138799178', username: 'porszag', twitter: 'https://twitter.com/porszag', avatar: 'http://pbs.twimg.com/profile_images/556511134002724866/3lu1QvC8_normal.jpeg', name: 'Peter Orszag', bio: 'Peter Orszag is an economist, runner, vice chair at Citi and columnist at @BloombergView'}),
User.find_or_create_by({provider: 'twitter', uid: '583938358', username: 'RobertJShiller', twitter: 'https://twitter.com/RobertJShiller', avatar: 'http://pbs.twimg.com/profile_images/378800000673579465/2b50ca97d43b1c4a53597accaa2dae5f_normal.jpeg', name: 'Robert J Shiller', bio: 'Economist at Yale University. Irrationally Exuberant.'}),
User.find_or_create_by({provider: 'twitter', uid: '286654612', username: 'mark_dow', twitter: 'https://twitter.com/mark_dow', avatar: 'http://pbs.twimg.com/profile_images/418323553147035648/X4EtQTNo_normal.jpeg', name: 'Mark Dow', bio: 'hedge fund manager, economist, Washington refugee, political junkie, anti-partisan, amateur linguist, tourist TA, bonobo wannabe'}),
User.find_or_create_by({provider: 'twitter', uid: '17078632', username: 'BobbyJindal', twitter: 'https://twitter.com/BobbyJindal', avatar: 'http://pbs.twimg.com/profile_images/87988618/jindalprofile_normal.jpg', name: 'Gov. Bobby Jindal', bio: 'The Official Bobby Jindal Twitter Page'})]

regulation_perspectives.each do |expert|
  regulation_issue.perspectives << expert
end

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
globalization_issue = Issue.create({name: "Globalization", description: "Perspectives concerning our increasingly globalized economy."})
business_category.issues << globalization_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

globalization_perspectives = [
  User.find_or_create_by({provider: 'twitter', uid: '50393960', username: 'billgates', twitter: 'https://twitter.com/billgates', avatar: 'http://pbs.twimg.com/profile_images/558109954561679360/j1f9DiJi_normal.jpeg', name: 'Bill Gates', bio: 'Sharing things I\'m learning through my foundation work and other interests...'}),
User.find_or_create_by({provider: 'twitter', uid: '15308469', username: 'McKQuarterly', twitter: 'https://twitter.com/McKQuarterly', avatar: 'http://pbs.twimg.com/profile_images/436604894573641728/quqvcjFy_normal.png', name: 'McKinsey Quarterly', bio: 'The business publication of @McKinsey & Company. In our 50th year, McKinsey Quarterly continues to shape the top-management agenda.'}),

User.find_or_create_by({provider: 'twitter', uid: '5120691', username: 'wef', twitter: 'https://twitter.com/wef', avatar: 'http://pbs.twimg.com/profile_images/458931899528773632/41tckgiO_normal.png', name: 'World Economic Forum', bio: 'International institution committed to improving the state of the world. #WEF'}),
User.find_or_create_by({provider: 'twitter', uid: '216881337', username: 'SenRandPaul', twitter: 'https://twitter.com/SenRandPaul', avatar: 'http://pbs.twimg.com/profile_images/378800000172093378/1fdc56b3070dfe288553f20ebb49e92a_normal.jpeg', name: 'Senator Rand Paul', bio: 'I fight for the Constitution, individual liberty and the freedoms that make this country great.'}),
User.find_or_create_by({provider: 'twitter', uid: '213767250', username: 'RichEdsonDC', twitter: 'https://twitter.com/RichEdsonDC', avatar: 'http://pbs.twimg.com/profile_images/533800312776060928/od4kUYMY_normal.jpeg', name: 'Rich Edson', bio: 'Washington Correspondent, Fox Business Network'}),
User.find_or_create_by({provider: 'twitter', uid: '37718217', username: 'TheDomino', twitter: 'https://twitter.com/TheDomino', avatar: 'http://pbs.twimg.com/profile_images/378800000330446802/ed7cff8a92cd96711a10fd354937eaa8_normal.jpeg', name: 'Dominic Chu', bio: 'Markets & business news for @CNBC...hunting for the perfect tee time.\nNow you know & knowing is half the battle!\nTweets are mine, retweets aren\'t endorsements.'}),
User.find_or_create_by({provider: 'twitter', uid: '332617373', username: 'elerianm', twitter: 'https://twitter.com/elerianm', avatar: 'http://pbs.twimg.com/profile_images/445711996223107072/gbfzoEL7_normal.jpeg', name: 'Mohamed A. El-Erian', bio: 'Chief Economic Adviser, Allianz. Chair of Pres. Obama\'s Global Development Council.  Author, NYT/WSJ bestseller. When Markets Collide. Frmr CEO/CIO of PIMCO'}),
User.find_or_create_by({provider: 'twitter', uid: '32359921', username: 'EconBizFin', twitter: 'https://twitter.com/EconBizFin', avatar: 'http://pbs.twimg.com/profile_images/3240055746/a85b7cb8c2b6434ebd84ac2de52af014_normal.png', name: 'The Economist', bio: 'Official posts from The Economist on Business, Finance and Economics'}),
User.find_or_create_by({provider: 'twitter', uid: '970207298', username: 'SenWarren', twitter: 'https://twitter.com/SenWarren', avatar: 'http://pbs.twimg.com/profile_images/3082623266/41c816145f1bf4ac1ee35478d8162d7c_normal.jpeg', name: 'Elizabeth Warren', bio: 'Official twitter account of Senator Elizabeth Warren of Massachusetts.'})]



globalization_perspectives.each do |expert|
  globalization_issue.perspectives << expert
end
paul = User.find_by({provider: 'twitter', uid: '17006157', username: 'NYTimeskrugman', twitter: 'https://twitter.com/NYTimeskrugman', avatar: 'http://pbs.twimg.com/profile_images/2044852218/NYT_Twitter_Krugman_normal.png', name: 'Paul Krugman', bio: 'Nobel laureate. Op-Ed columnist, @nytopinion. Author, “The Return of Depression Economics,” “The Great Unraveling,” “The Age of Diminished Expectations” + more.'})

globalization_issue.perspectives << paul

carl = User.find_or_create_by({provider: 'twitter', uid: '1534167900', username: 'Carl_C_Icahn', twitter: 'https://twitter.com/Carl_C_Icahn', avatar: 'http://pbs.twimg.com/profile_images/378800000021016777/1d530fa4b92b883270c5bdd7583ed073_normal.jpeg', name: 'Carl Icahn', bio: 'Chairman of Icahn Enterprises L.P.; Some people get rich studying artificial intelligence.  Me, I make money studying natural stupidity.'}),

globalization_issue.perspectives << carl

maria = User.find_or_create_by({provider: 'twitter', uid: '208155240', username: 'MariaBartiromo', twitter: 'https://twitter.com/MariaBartiromo', avatar: 'http://pbs.twimg.com/profile_images/378800000813078329/c685d4f8043b2ac4ca43b4f4224b6403_normal.jpeg', name: 'Maria Bartiromo ', bio: 'Anchor, Global Markets Editor - @OpeningBellFBN w/ Maria Bartiromo 9-11am ET M-F on @FoxBusiness Network  & @SundayFutures 10:00am ET Sundays  on @FoxNews.'}),

globalization_issue.perspectives << maria

# find_or_CREATE_by THE ISSUE AND PUT IT UNDER THIS CATEGORY
trading_issue = Issue.find_or_create_by({name: "High-Frequency Trading", description: "Perspectives on high-speed, high-frequency trading."})

business_category.issues << trading_issue

# find_or_CREATE_by THE perspectives THAT BELONG UNDER THIS ISSUE

trading_perspectives = [User.find_or_create_by({provider: 'twitter', uid: '15281391', username: 'thestreet', twitter: 'https://twitter.com/thestreet', avatar: 'http://pbs.twimg.com/profile_images/528585288902533120/BO5x5qE9_normal.jpeg', name: 'TheStreet', bio: 'An independent digital financial media company. We provide business and financial news, investing ideas and analysis to investors worldwide.'}),
User.find_or_create_by({provider: 'twitter', uid: '14216123', username: 'jimcramer', twitter: 'https://twitter.com/jimcramer', avatar: 'http://pbs.twimg.com/profile_images/451344676914593792/8lV96m2l_normal.jpeg', name: 'Jim Cramer', bio: 'I am founder of @TheStreet & I run charitable trust portfolio Action Alerts PLUS. I also host @MadMoneyOnCNBC & blog daily on http://t.co/sGTJX6HuDA. Booyah!'}),
User.find_or_create_by({provider: 'twitter', uid: '39264827', username: 'GuyAdami', twitter: 'https://twitter.com/GuyAdami', avatar: 'http://pbs.twimg.com/profile_images/2941554076/2b0270a02dbca561605b6c88ae1f1d0b_normal.jpeg', name: 'Guy Adami', bio: 'Champion for independent financial advice Director Advisor Advocacy @privateADVgroup Original @cnbcfastmoney member. NYC 2012 @IronmanTri Proud @georgetown alum'}),

User.find_or_create_by({provider: 'twitter', uid: '19997064', username: 'mebfaber', twitter: 'https://twitter.com/mebfaber', avatar: 'http://pbs.twimg.com/profile_images/378800000027389317/ef0750bf5c2fd72d86587b77e1230f3a_normal.jpeg', name: 'Meb Faber', bio: 'Founder & CIO Cambria Funds & The Idea Farm. Author Shareholder Yield, Ivy Portfolio, Global Value, & Papers: http://t.co/BHWVfzd31s I don\'t talk funds here'}),
User.find_or_create_by({provider: 'twitter', uid: '60473581', username: 'HedgeFundsRev', twitter: 'https://twitter.com/HedgeFundsRev', avatar: 'http://pbs.twimg.com/profile_images/1251412926/tw-128-frm-hedgefundsreview_normal.jpg', name: 'Hedge Funds Review', bio: 'Official Hedge Funds Review is the definitive information source for the hedge fund industry. Take a FREE 1 month trial. http://t.co/CqNJCKOFwO'}),
User.find_or_create_by({provider: 'twitter', uid: '2829684101', username: 'Mikhail_Econ', twitter: 'https://twitter.com/Mikhail_Econ', avatar: 'http://pbs.twimg.com/profile_images/538263284147691520/jvzo3_Mv_normal.jpeg', name: 'Mikhail Liluashvili', bio: 'Central and Eastern European Economist at Oxford Economics. All views expressed here are my own.'}),
User.find_or_create_by({provider: 'twitter', uid: '14115408', username: 'optionmonster', twitter: 'https://twitter.com/optionmonster', avatar: 'http://pbs.twimg.com/profile_images/977412025/Screen_shot_2010-06-10_at_11.49.42_AM_normal.png', name: 'Jon Najarian', bio: 'Talent hits a target no one else can hit; Genius hits a target no one else can see. I am the Co-founder of optionMONSTER & http://t.co/qmWQVy310M'})]

trading_perspectives.each do |expert|
  trading_issue.perspectives << expert
end



