-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 02:20 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Technology', '2019-02-03 04:06:04', '2019-02-06 04:10:03'),
(3, 'Profile', '2019-02-03 04:06:29', '2019-02-06 04:10:15'),
(4, 'Motivation', '2019-02-04 05:38:10', '2019-02-04 05:38:10'),
(6, 'Story', '2019-02-06 09:57:37', '2019-02-06 09:57:37'),
(7, 'Knowledge', '2019-02-06 18:18:00', '2019-02-06 18:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_02_03_102901_create_categories_table', 2),
(4, '2019_02_04_104455_create_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category`, `title`, `slug`, `short_description`, `content`, `image`, `created_at`, `updated_at`) VALUES
(2, 4, 'Why You Should Stop Wishing and Go Get What You Want', 'why-you-should-stop-wishing-and-go-get-what-you-want', 'As toddlers, kids just point to stuff and use the few words they know to get it. Milk. Blanket. Daddy. Mommy.', '<p>Since the day my twin girls were born six years \r\nago, I have learned so much from them about leadership and the dynamics \r\nof a workplace. It sounds crazy, but it&acirc;&#128;&#153;s true and it&acirc;&#128;&#153;s just another \r\ngift they have given me. I&acirc;&#128;&#153;ve learned about empathy, how to focus on \r\nwhat&acirc;&#128;&#153;s important, how to ruthlessly prioritize. I&acirc;&#128;&#153;ve learned that I \r\ncan&acirc;&#128;&#153;t do everything myself and I&acirc;&#128;&#153;m still working on being okay with \r\nthat. But what I&acirc;&#128;&#153;ve most recently learned from them has been eye-opening\r\n as I think about their future and it&acirc;&#128;&#153;s been insightful as I see how \r\nwomen go after what they want at work.<p>As toddlers, kids just point to stuff and use the few words they know\r\n to get it. Milk. Blanket. Daddy. Mommy. As parents, my husband and I \r\nfocused our time and energy on getting them to say &acirc;&#128;&#156;please&acirc;&#128;&#157; and &acirc;&#128;&#156;thank \r\nyou.&acirc;&#128;&#157; Then we reveled in the fact that they started saying it while we \r\npatted ourselves on the back. But wait, not so fast.</p><p>Recently, they have started to ask for things differently. Sure, if \r\nthey want more milk at dinner they (usually) ask the right way. But for \r\nthe things they aren&acirc;&#128;&#153;t sure they can get, they have started to take the \r\nindirect route. I hear things like, &acirc;&#128;&#156;I wish I could have another piece \r\nof candy.&acirc;&#128;&#157; &acirc;&#128;&#156;I wish I could take my new toy to school.&acirc;&#128;&#157; &acirc;&#128;&#156;I wish I could \r\nwatch another episode of (insert favorite cartoon here).&acirc;&#128;&#157; Basically, if \r\nthere is something they want and the answer could be &acirc;&#128;&#156;no,&acirc;&#128;&#157; rather than \r\ncoming out and asking for it, they are <em>wishing</em> for it.</p><p>I get it. If you don&acirc;&#128;&#153;t ask for something, you can&acirc;&#128;&#153;t be denied. If you <em>wish</em>,\r\n you&acirc;&#128;&#153;re safe either way. Of course, I know that my girls aren&acirc;&#128;&#153;t the \r\nfirst ones to invent this. I have started to notice it in kids of all \r\nages. What happens if we allow our girls to wish for things rather than \r\ntruly speaking up for what they want?</p><p>They will end up like me. For the first part of my career, I put my heart and soul into my work and <em>wished</em> I would be recognized. I went the extra mile with everything I did <em>wishing</em>\r\n that I could get that promotion. To be fair, sometimes it worked. But \r\nyou know what works more often and much faster than wishing? Asking for \r\nwhat you want.</p><p>When you spend your life wishing for something, you&acirc;&#128;&#153;re dependent on \r\nthe people above you to slow down long enough to recognize and reward \r\nyour contributions. Instead, put yourself in the driver&acirc;&#128;&#153;s seat. If you \r\nwant the next big project, a spot on the leadership team, more \r\nresponsibility, whatever it is, take the initiative and make a \r\ncompelling case:</p><p><strong>Clearly articulate what it is you want.</strong> Perhaps \r\nyou\'ve been in your current role for some time and you feel you\'ve \r\nmastered it and are ready for what\'s next. Be thoughtful about your \r\nstrengths and interests and use that to help determine your path \r\nforward.</p><p><strong>Consider why.</strong> What\'s your motivation? Is it \r\nfinancially driven? Are you trying to build a new skill set? \r\nUnderstanding what you want and why is critical for your manager to help\r\n you achieve your goals.</p><p><strong>Put together a list of your recent achievements. </strong>Showcase your success and the role you\'ve played in your team\'s success.</p><p><strong>Demonstrate how you can add value going forward.</strong> For\r\n example, if you want to be on the leadership team, what is the value \r\nyou can add to the team? How will your contributions make it better, \r\nstronger and more effective going forward?</p><p>My girls have now learned that they only get to wish for things that \r\naren&acirc;&#128;&#153;t readily possible. &acirc;&#128;&#156;I wish I had a baby brother.&acirc;&#128;&#157; &acirc;&#128;&#156;I wish today \r\nwas my birthday.&acirc;&#128;&#157; Because if it&acirc;&#128;&#153;s something they want that is also \r\nwithin their grasp, they need to boldly and unapologetically ask for it.\r\n Yes, that means that they will hear &acirc;&#128;&#156;no&acirc;&#128;&#157; more than they want to. But \r\nthat&acirc;&#128;&#153;s how real life works. You hear &acirc;&#128;&#156;no&acirc;&#128;&#157; and then you find another way \r\nto get what you want. That&acirc;&#128;&#153;s how you move forward.</p><p>If you find that you&acirc;&#128;&#153;re wishing for something that is within your \r\nreach, stop wishing. Go out and get it for yourself. There is no greater\r\n reward than the pride of knowing what you want, boldly going after it \r\nand unapologetically achieving your goals.</p><p><em>I have spent the last twenty years in client services working my \r\nway up the ranks of agencies large and small. Today I manage the \r\nMinneapolis team of a global digital agency. Experience has afforded me a\r\n lot. I have worked with great teams and extremely dysfunctional teams.</em></p></p>\n', 'julie koepsell-forbes-get what you want.jpg', '2019-02-04 05:39:31', '2019-02-06 18:10:46'),
(3, 3, 'Mirror Review Profile: John Baker, Mirum CMO', 'mirror-review-profile-john-baker-mirum-cmo', 'With more than 20 years of experience, Mirum Global CMO John Baker is an agency specialist who believes in the power of technology to change marketing for the better.', '<p>John is a digital marketing professional with strengths in direct \r\nmarketing and application development. He also has extensive experience \r\nin business development, client management, agency relationships, \r\nnetwork integration and agency start-ups. In addition, John has worked \r\non multiple entrepreneurial ventures, from the creation of Mirum, a \r\nglobal digital agency, to interactive agencies and startup clients, \r\nincluding Virgin Games and boo.com. John has lived in London and Paris, \r\nand handled global agency management for Mirum, JWT, Iris, Proximity and\r\n Organic.<span>\r\n\r\n<p><strong>The path to Mirum</strong></p>\r\n\r\n<p>In 1995, John founded a digital agency called Modem Media and never \r\nlooked back. His experience allowed him to see how agencies work across \r\ndirect, digital, advertising and sales promotion, and how these teams \r\nbuild their clients&acirc;&#128;&#153; businesses. As an MBA intern, John found himself \r\ndoing everything from sales proposals to management accounting \r\nspreadsheets.</p>\r\n\r\n<p>John has been with Mirum and J. Walter Thompson (JWT) since 2010. As \r\npart of the JWT Global Digital team, John helped drive the creation of \r\nMirum, where he is now Global Chief Marketing Officer.</p>\r\n\r\n<p>As CMO of Mirum, he helped create the new agency brand, aligning 15 \r\nindependent agencies and selling in a common vision and culture to the \r\nteams, utilizing client meetings and new business pitches to bring \r\npeople together.</p>\r\n\r\n<p>&acirc;&#128;&#156;It is amazing to start with five people and an idea, and end up with\r\n thousands of people pushing it ahead, making it bigger and better,&acirc;&#128;&#157; \r\nsays John.</p>\r\n\r\n<p>At Mirum, John focuses on building the business, shaping how Mirum \r\nworks with partners, and driving digital strategy for clients. As a \r\nregular industry speaker, he has been a cyber-jury member at Cannes and \r\nworked with the DMA and IPA councils.</p>\r\n\r\n<p><strong>A Client-Friendly Atmosphere</strong></p>\r\n\r\n<p>In today&acirc;&#128;&#153;s business world, everyone is looking for points of \r\ndifferentiation and unique benefits for their customers. &acirc;&#128;&#156;If a \r\nbusinessman has confidence, they can create anything and revel in its \r\nexperience,&acirc;&#128;&#157; says John.</p>\r\n\r\n<p>John&acirc;&#128;&#153;s Mirum team firmly believes in this culture. In addition, the dedicated CMO launched the idea of <i>a borderless digital agency</i>\r\n that aims to break down barriers with clients by connecting with them \r\nglobally and making the collaboration more focused on their needs.</p>\r\n\r\n<p>John and his team engage clients and consumers in the following areas:</p>\r\n\r\n<p><strong>Business Transformation</strong></p>\r\n\r\n<ul><li>Transformation Strategy</li><li>Opportunity Identification</li><li>New Product Development</li></ul><p><strong>Experience Design</strong></p>\r\n\r\n<ul><li>Solution Planning and Prototyping</li><li>Design and Development</li><li>Platform Integration and Management</li></ul><p><strong>Commerce Activation</strong></p>\r\n\r\n<ul><li>Campaign and Media Planning</li><li>Campaign Creation</li><li>Conversion Optimization and Management</li></ul><p><strong>Dedication and responsibility</strong></p>\r\n\r\n<p>As the CMO of Mirum, John is responsible for building awareness and \r\npursuing leads; being a newly established company, it&acirc;&#128;&#153;s essential for \r\nMirum to push into analyst reports and industry press. John also runs \r\nthe global business development team and manages Mirum&acirc;&#128;&#153;s partnerships \r\nwith technology companies like Adobe, Sitecore and Salesforce.</p>\r\n\r\n<p>The fun-loving CMO believes that seeing work come together from a \r\nteam of professionals and making great stuff is hugely satisfying &acirc;&#128;&#147; \r\nespecially when the client agrees and decides to carry on! John&acirc;&#128;&#153;s \r\nfavorite is helping bring in new business and pitching big programs for \r\nclients, as he loves meeting people and considers every client like a \r\nnew puzzle. Figuring out what clients need allows John and his team to \r\nkick-start a clear and common goal.</p>\r\n\r\n<p><strong>Improve with continuous learning</strong></p>\r\n\r\n<p>John is most grateful to his parents for instilling in him a good \r\nwork ethic. He learned early on that one must do things to make them \r\nhappen, not just talk about them. In his initial days, John says he \r\nlacked the understanding of how today&acirc;&#128;&#153;s organizations are set up and how\r\n to work through them. To overcome this, he started working in a niche \r\nconsulting firm doing international cost-of-living research. Because he \r\nwanted to learn and experience more, John attended Columbia Business \r\nSchool to become skilled in how different types of businesses work.</p>\r\n\r\n<p><strong>Mistakes make you smarter</strong></p>\r\n\r\n<p>Commenting about professional life, John says: &acirc;&#128;&#156;There can always be \r\nmistakes, like on pitches, but as long as you feel good about why you \r\nmade the decision you did, you can&acirc;&#128;&#153;t get upset about that.&acirc;&#128;&#157;</p>\r\n\r\n<p>&acirc;&#128;&#156;I could point to decisions I&acirc;&#128;&#153;ve made to move to a new agency or do a\r\n startup that didn&acirc;&#128;&#153;t work, but I think such mistakes make you smarter.&acirc;&#128;&#157;</p></span></p>\n', 'john baker - mirum cmo.jpg', '2019-02-06 04:13:41', '2019-02-06 18:13:13'),
(4, 2, 'Rocket Fuel for Group Collaboration', 'rocket-fuel-for-group-collaboration', 'Have your team brainstorming sessions become an exercise in disappointment? Jordan Bainer, all business by day, improv comic by night, shares some trade secrets to free your mind, raise energy levels and get the creative juices flowing.', '<span><p><span style=\'font-family:\"Mirum Sans\"\'>How\r\n often have you pulled together a team for a brainstorm session or \r\nworkshop, only to find that the group&acirc;&#128;&#153;s energy is low and it takes WAY \r\ntoo much time to get the creative juices flowing? It doesn&acirc;&#128;&#153;t matter if \r\nit&acirc;&#128;&#153;s first thing in the morning or early afternoon, teams often can&acirc;&#128;&#153;t \r\nget over the initial slump of group discussion and time is ultimately \r\nwasted. </span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>There are many \r\nfactors that contribute to this lackadaisical dilemma &acirc;&#128;&#147; individual \r\nguardedness, unclear meeting purpose and/or confusion around \r\nparticipation roles, to name a few. As such, you can always set proper \r\nexpectations before, during and after the meeting, but that doesn&acirc;&#128;&#153;t \r\nnecessarily lead to valuable discussion outcomes.</span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>So, how can you get \r\nthe most out of your time together? One way to get the blood pumping and\r\n mind nimble is by employing improv comedy exercises to start the \r\nmeeting. These games bring individuals together and take the pressure \r\noff before you dig into the real work. Here are a few improv comedy \r\nexercises to prep the team for a fruitful discussion:</span></p>\r\n\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Pass the clap</span></span></b><b><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\"> &acirc;&#128;&#147; great for energizing meetings</span></span></b></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">1. Stand in a circle. Depending on the size of the group, you might want to break team members up into 2 or 3 groups.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">2. Choose a person to start the exercise. That person turns and faces the person to their left.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">3. They meet eyes and, without speaking, clap in unison. The goal is to only hear one clap.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">4.\r\n The second person then turns to the person on their left, and they \r\nrepeat until the clap is moved around the circle back to the starting \r\npoint.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">5.\r\n Once the team has the core idea, alternate passing the clap in a \r\ndifferent order (e.g., first person passes the clap to someone across \r\nthe circle, etc.). You can pass the clap in any direction or even a pair\r\n can pass it between themselves a few times.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">This\r\n game is great for getting a group of people energized and &acirc;&#128;&#156;in the room&acirc;&#128;&#157;\r\n before starting a meeting, builds connections between individuals and \r\nincreases team rapport. Plus, it&acirc;&#128;&#153;s super simple and doesn&acirc;&#128;&#153;t require a \r\nton of explanation.</span></span></p>\r\n\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Building a story: &acirc;&#128;&#156;Yes, and&acirc;&#128;&brvbar;&acirc;&#128;&#157;</span></span></b><b><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\"> &acirc;&#128;&#147; how to spark collaborative thinking </span></span></b></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">1.<b> </b></span></span><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Stand in a circle. Depending on the size of the group, you might want to break team members up into 2 or 3 groups.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">2. The first person begins a story by saying one sentence (e.g., &acirc;&#128;&#156;Bob went to the store yesterday.&acirc;&#128;&#157;)</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">3.\r\n The person next to them says &acirc;&#128;&#156;Yes, (repeats what the person before them\r\n said) and&acirc;&#128;&brvbar;&acirc;&#128;&#157; They then add a new sentence to the story. (e.g., &acirc;&#128;&#156;Bob went\r\n to the store yesterday AND Bob picked up some power tools.&acirc;&#128;&#157;) NOTE: </span></span><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">You only have to repeat what the person immediately before you said.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">4. Repeat around the circle until most group members have a chance to add to the story.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">5. Decide when to start wrapping the storylines up and finish.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">6. Everyone claps and you start a new story.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Overall,\r\n this game is a quick way to spark some collaborative creative thinking,\r\n as well as acknowledging that everyone has something unique to add to \r\nthe story. Be sure to avoid editing or limiting the creativity that \r\nflows from this exercise. Saying &acirc;&#128;&#156;Yes, and&acirc;&#128;&brvbar;&acirc;&#128;&#157; is crucial to any \r\nsuccessful group work session. Also, don&acirc;&#128;&#153;t think of things to say until \r\nit is your turn; truly listen to what the last person said and build on \r\nit. </span></span></p>\r\n\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Count to 20 &acirc;&#128;&#147; develops group awareness and unity</span></span></b></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">1. Stand in a circle. Depending on the size of the group, you might want to break team members up into 2 or 3 groups.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">2. Everyone lowers their heads and closes their eyes.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">3. The goal is for the group to count to twenty, one person saying one number at a time. Anybody can start the count.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">4.\r\n Then, a different person says the next number &acirc;&#128;&#147; but if two or more \r\npeople happen to speak at the same time, counting must start again from \r\nthe beginning.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">5. It is possible to get to twenty if everybody really concentrates &acirc;&#128;&#147; try and be relaxed.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">6. Once you hit twenty (which might take a while), congratulate yourselves by clapping as a group.</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Though\r\n it&acirc;&#128;&#153;s a simple exercise, it helps develop team awareness and gets people\r\n working towards a common goal. The game requires active listening and \r\npatience, both vital elements of successful group working sessions. If \r\nyou don&acirc;&#128;&#153;t hit the goal in a designated amount of time, don&acirc;&#128;&#153;t worry about\r\n it. The point is the process, not the end (although, it&acirc;&#128;&#153;s surprising \r\nhow good it feels to hit 20 as a group!).</span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">Not\r\n every team will be amenable to improv exercises, nor does every group \r\nmeeting call for this type of warm-up activity. That said, if there&acirc;&#128;&#153;s a \r\nbasic level of trust among team members and a desire to come together \r\nfor a common goal, it&acirc;&#128;&#153;s worth exploring these intro activities. The real\r\n value comes from the silliness of playing these games, ultimately \r\nlowering the tension before the real work begins.&nbsp; </span></span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'><span style=\"color:black\">If\r\n you decide to experiment with improv exercises in your next meeting, \r\ndon&acirc;&#128;&#153;t shoot for perfection, just aim for your team to have fun. There is\r\n no such thing as perfection when you are making things up as you go.</span></span></p></span>\n', 'rocket fuel for collaboration-mirum-blog.jpg', '2019-02-06 04:19:32', '2019-02-06 18:14:49'),
(6, 7, 'In Data Science, Women Can Flip the Script', 'in-data-science-women-can-flip-the-script', 'With IBM predicting that data science jobs will grow exponentially over the next few years, diversity is the key to reducing bias. Our Karen Bellin has advice for women wanting to enter the field.', '<p><span><p><span style=\'font-family:\"Mirum Sans\"\'>In Homecoming, on Amazon Prime Video, there is a scene in a Department of\r\n Defense office where an investigator goes to consult with his boss who \r\nquietly yet forcefully illustrates the power of being your whole self at\r\n work. His boss is breastfeeding her baby in her office. The man looks \r\nslightly intimidated and uncomfortable, but presents his findings \r\nnonetheless. The woman looks comfortable and addresses him in a \r\nmatter-of-fact manner. It&acirc;&#128;&#153;s a scene that&acirc;&#128;&#153;s played out in reverse many \r\ntimes in film and in real life: a slightly intimidated and insecure \r\nwoman going into a man&acirc;&#128;&#153;s office to seek approval. It&acirc;&#128;&#153;s inspiring to see \r\nthis scenario flipped so powerfully. The scene portrays a woman, \r\nunapologetically female, directing her subordinate in what to do. She \r\ndoes not apologize for being a woman, nor does she hide the demands of \r\nbeing a working mother. The investigation continues from there.</span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>The Department of \r\nDefense has been conducting investigations, putting investigators into \r\nthe field with supervision, for decades. Yet, in 2017 only </span><strong><span style=\'font-family:\"Mirum Sans\"\'><a href=\"https://dod.defense.gov/news/special-reports/Womens-History/\" target=\"_blank\">32% of civilian roles</a></span></strong><span style=\'font-family:\"Mirum Sans\"\'>\r\n were filled by women, making the scene in &acirc;&#128;&#156;Homecoming&acirc;&#128;&#157; all the more \r\ninspiring. Data science is a new field where the roles and activities \r\nare still being defined. Data science is derived from a cross-section of\r\n traditionally male dominated areas, but there isn&acirc;&#128;&#153;t a history of \r\nspecific data-science roles being filled by either a man or a woman. \r\nGendered expectations of roles in data science may thus be avoided since\r\n there isn&acirc;&#128;&#153;t a direct precedent. I think this freshness of the \r\ndata-science field is what makes it particularly compelling (if not \r\nurgently so) for women. Many women who are currently working in related \r\nfields are looking to crossover into a career, like one in data science,\r\n where they can bring their whole selves to work.</span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>In addition to being\r\n a new field, the ways of working that I&acirc;&#128;&#153;ve seen being adopted, more \r\nnaturally in data science than in other areas, further mitigate gender \r\nbiases in the field:</span></p>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>Ways of framing the work, illustrated in the growing embracement of the </span></b><b><span style=\'font-family:\"Mirum Sans\"\'><a href=\"https://datapractices.org/manifesto/\" target=\"_blank\">Data Practices Manifesto</a></span></b><b><span style=\'font-family:\"Mirum Sans\"\'> that prizes inclusion and accountability as much as experimentation and impact in its values statement.</span></b></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>Ways of \r\napproaching the work, such as using design thinking methodologies to \r\nchoose the most impactful challenges to address through data science.</span></b></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>Ways of assigning\r\n the work, through use of a RACI matrix where for each activity a person\r\n is clearly designated to be responsible, accountable, consulted and \r\ninformed.</span></b></p>\r\n</blockquote>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>The inherent danger \r\nwith data-science work being done by a non-representative sample of the \r\nhuman population also compels women to enter the field. However, if \r\nembarking on a career in data science women are expected to &acirc;&#128;&#156;act like \r\nmen,&acirc;&#128;&#157; the bias introduced from lack of diversity will not be reduced. \r\nBias can be introduced in the data collection as well as in the \r\ninterpretation of data. Bias is a natural tendency that can lead to poor\r\n decisions and interpretations. Having a diversified workforce is one \r\nway that biases can be reduced and better decisions can be taken from \r\nthe data. Data science has a better impact when those working in the \r\nfield have a diversity of viewpoints. For me, as a woman, this makes a \r\ncareer in data science even more urgently appealing as my point of view \r\nis as important as anyone else&acirc;&#128;&#153;s, and all are needed for the field to be\r\n sustained.</span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>I used to think I \r\nloved working with data, math and science because there is a traceable \r\nanswer to every problem (e.g., 1 + 1 equals 2). However, the more I work\r\n across those disciplines and in business, the more I understand that \r\nthere&acirc;&#128;&#153;s a push and pull between the data and the people who are making \r\ndecisions. Still, there&acirc;&#128;&#153;s a lot of strength in numbers and that strength\r\n helps negate the effects that bias may play in limiting somebody&acirc;&#128;&#153;s \r\ncareer regardless of their gender.</span></p>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>To take advantage of\r\n molding an emerging field, here are some things I advise women to keep \r\nin mind when developing their data-science careers:</span></p>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>The data-science \r\nfield is exploding, in part due to greater accessibility to tools that \r\nwere previously only available to white-coat PHD statisticians. Tools \r\nused for predictive analytics, data preparation and mining were \r\nprohibitively expensive but are now open source and free. This means \r\nthat tool access is not a barrier to entry in the data-science field. R,\r\n Python and Julia are the open source coding languages popular in data \r\nscience, but non-coders can get into data science using open source \r\ndrag-and-drop modeling tools like KNIME.</span></b></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>A successful data\r\n scientist has strong technical, analytical and business skills. It is \r\nobviously challenging for organizations to find individual candidates \r\nwith strengths in those three areas, let alone the hundreds of thousands\r\n of people needed to be hired into data-science roles over the next few \r\nyears, </span></b><b><span style=\'font-family:\"Mirum Sans\"\'><a href=\"https://www.forbes.com/sites/louiscolumbus/2017/05/13/ibm-predicts-demand-for-data-scientists-will-soar-28-by-2020/#110211557e3b\" target=\"_blank\">according to IBM</a></span></b><b><span style=\'font-family:\"Mirum Sans\"\'>.\r\n Those skills are also exceedingly difficult to vet via a resume review \r\nor in a traditional interview process. Networking through local meetups \r\nand industry events, while building up a network on LinkedIn, helps \r\nwomen get their foot in the door faster for data-science jobs than \r\nsubmitting a resume alone.</span></b></p>\r\n</blockquote>\r\n\r\n<blockquote>\r\n<p><b><span style=\'font-family:\"Mirum Sans\"\'>Hiring \r\norganizations are also getting smarter about hiring data-science teams \r\nas an alternative to hiring individuals who are equally strong in \r\nbusiness, technology and analysis. On data-science teams, individuals \r\nbalance each other out across those skills. Getting to know \r\nprofessionals in the field who have complementary strengths help guide \r\nwomen towards suitable openings when wanting to make a career move.</span></b></p>\r\n</blockquote>\r\n\r\n<p><span style=\'font-family:\"Mirum Sans\"\'>The data-science field is growing and changing constantly as it is being defined. It&acirc;&#128;&#153;s a demanding but rewarding career</span>&acirc;&#128;&#138;<span style=\'font-family:\"Mirum Sans\"\'>&acirc;&#128;&#148;</span>&acirc;&#128;&#138;<span style=\'font-family:\"Mirum Sans\"\'>not just for the salaries, but for the impact the work can have. Now is the time for women to enter this field</span>&acirc;&#128;&#138;<span style=\'font-family:\"Mirum Sans\"\'>&acirc;&#128;&#148;</span>&acirc;&#128;&#138;<span style=\'font-family:\"Mirum Sans\"\'>when demand is exceeding supply, the barriers to entry are low and diversity is integral to the success of the field as a whole.</span></p></span></p>\n', 'data science-karen bellin-mirum.png', '2019-02-06 18:19:25', '2019-02-06 18:19:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mirum', 'mirum@mirum.com', NULL, '$2y$10$XTi3cN3eBhlFCApSwSCd9OQakajupts60DAdsIO3FJFMq34Fuv2qa', 'DmX58cVpCSk4Dg6XoTvCPKtwsfY3gp2ntOnN6oQWd10ZQYOZ0D4BBIPhtE6Q', '2019-02-04 06:26:40', '2019-02-06 09:58:18'),
(2, 'Erma Ramadhani', 'erma.ramadhani@ymail.com', NULL, '', 'nMU2ZNGuRs3EZ9nFSqSYs3KkBW7I1ACa8n83DrTRnxBo4p5j16ERVxgzCQN6', '2019-02-06 09:53:05', '2019-02-06 09:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
