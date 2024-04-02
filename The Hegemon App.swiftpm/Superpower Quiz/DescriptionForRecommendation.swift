import SwiftUI

func getDescriptionForRecommendation(_ recommendation: String) -> String {
    switch recommendation {
    case "📖 The Lean Startup by Eric Ries":
        return "In The Lean Startup, Eric Ries introduces a revolutionary approach to entrepreneurship. By emphasizing iterative product development, validated learning, and efficient use of resources, Ries guides entrepreneurs through a process that minimizes waste and maximizes the chances of building a sustainable business. This book is an essential read for those looking to navigate the uncertainties of startups with a strategic and efficient mindset."
    case "📖 Zero to One by Peter Thiel":
        return "Zero to One by Peter Thiel is a manifesto for innovative thinking. Thiel, co-founder of PayPal, challenges conventional wisdom and encourages entrepreneurs to pursue unique, groundbreaking ideas rather than imitating existing successes. With insights on creating a monopoly and fostering a culture of innovation, this book provides a blueprint for turning ambitious visions into reality."
    case "📖 The Innovator's Dilemma by Clayton M. Christensen":
        return "Clayton M. Christensen explores the challenges faced by established companies in the face of disruptive innovation in The Innovator's Dilemma. Through compelling case studies, Christensen reveals why successful companies often fail to adapt to new technologies and offers insights into how businesses can overcome the dilemma by embracing disruptive strategies."
    case "📖 Start with Why by Simon Sinek":
        return "In Start with Why, Simon Sinek explores the power of purpose and inspiration in leadership and entrepreneurship. Sinek argues that successful individuals and organizations start with a clear understanding of their why – their core beliefs and values. Through engaging stories and examples, this book inspires readers to articulate their own purpose and use it as a driving force for success."
    case "📖 How to Win Friends and Influence People by Dale Carnegie":
        return "Dale Carnegie's timeless classic, How to Win Friends and Influence People, is a guide to effective communication and relationship-building. Focusing on fundamental principles that stand the test of time, Carnegie provides insights on winning people over, improving interpersonal skills, and navigating the complexities of human interaction. This book is a valuable resource for entrepreneurs seeking to enhance their communication and leadership abilities."
    case "📖 The War of Art by Steven Pressfield":
        return "In The War of Art, Steven Pressfield tackles the internal battles that artists face in the pursuit of their creative endeavors. Pressfield identifies the resistance that often hinders artistic expression and provides insights on overcoming self-doubt, procrastination, and other obstacles. This book serves as a guide to unleashing one's creative potential by understanding and conquering the forces that resist the artist's work."
    case "📖 Steal Like an Artist by Austin Kleon":
        return "Austin Kleon's Steal Like an Artist is a refreshing take on creativity, encouraging artists to embrace influence, remix ideas, and find inspiration in unexpected places. Kleon challenges the notion of originality and offers practical advice on how to cultivate a unique artistic voice. This book is an inspiring read for those seeking to break through creative blocks and foster a more open and collaborative approach to their craft."
    case "📖 Color and Light by James Gurney":
        return "Clayton M. Christensen explores the challenges faced by established companies in the face of disruptive innovation in The Innovator's Dilemma. Through compelling case studies, ChristensColor and Light by James Gurney is a comprehensive guide for artists looking to master the intricacies of color theory and lighting in their work. Gurney, a renowned artist and illustrator, combines practical advice with visual examples to help artists understand and apply principles of color, shadow, and illumination. This book is an indispensable resource for anyone striving to enhance their skills in depicting the visual elements that bring art to life."
    case "📖 The Artist's Way by Julia Cameron":
        return "Julia Cameron's The Artist's Way is a transformative guide to unlocking creativity and overcoming creative blocks. Through a 12-week program, Cameron provides tools and exercises designed to tap into one's artistic potential. This book is not just about artistic technique but also about nurturing the artist's spirit, making it a valuable resource for those on a journey of self-discovery and creative expression."
    case "📖 The Creative's Guide to Starting a Business by Harriet Kelsall":
        return "The Creative's Guide to Starting a Business by Harriet Kelsall combines artistic passion with entrepreneurial acumen. Kelsall, a successful jeweler, shares practical insights and strategies for turning creative skills into a thriving business. From branding to marketing and financial planning, this book offers guidance tailored to artists and creatives looking to turn their passion into a sustainable and fulfilling career."
    case "📖 Clean Code by Robert C. Martin":
        return "Clean Code by Robert C. Martin is a guide to writing software code that is not just functional but also elegant and maintainable. Martin introduces principles and practices that contribute to clean, readable, and efficient code. This book is essential for developers aiming to improve the quality of their code and create software that stands the test of time."
    case "📖 Code Complete by Steve McConnell":
        return "Steve McConnell's Code Complete is a comprehensive and practical handbook for software construction. Covering a wide range of topics, McConnell explores coding techniques, debugging, testing, and the overall software development process. With a focus on best practices and sound methodologies, this book is a valuable resource for both novice and experienced developers striving to build high-quality software."
    case "📖 The Pragmatic Programmer by Andrew Hunt and David Thomas":
        return "The Pragmatic Programmer by Andrew Hunt and David Thomas offers practical advice and timeless tips for software developers. This book covers a variety of topics, from code organization and debugging to career management and teamwork. Packed with wisdom and actionable insights, it is a guide for programmers seeking to enhance their skills and navigate the complexities of the software development world."
    case "📖 The Mythical Man-Month by Frederick P. Brooks Jr.":
        return "Frederick P. Brooks Jr.'s The Mythical Man-Month is a classic exploration of software project management. Brooks reflects on the challenges of managing large-scale software projects and introduces the concept of the mythical man-month. This book provides valuable insights into the complexities of software development and remains relevant for anyone involved in project management within the tech industry."
    case "📖 Design Patterns by Erich Gamma":
        return "Design Patterns by Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides (The Gang of Four) is a seminal work on software design. The book introduces 23 design patterns that encapsulate best practices for object-oriented design. By providing reusable solutions to common design problems, this book empowers developers to create flexible and maintainable software architectures."
    case "📖 Talk Like TED by Carmine Gallo":                     
        return "Talk Like TED by Carmine Gallo decodes the secrets of successful TED Talks, revealing the elements that make them engaging and impactful. Gallo analyzes numerous TED Talks, identifying patterns and techniques that captivate audiences. This book is a valuable resource for anyone looking to enhance their public speaking skills, incorporating storytelling, passion, and authenticity into their communication style."
    case "📖 Made to Stick by Chip Heath and Dan Heath":
        return "In Made to Stick, Chip Heath and Dan Heath explore the characteristics of ideas that are memorable and resonate with people. The authors present a framework for creating sticky messages that endure and inspire action. Drawing on real-world examples, this book provides insights into crafting communication that is both compelling and enduring."
    case "📖 The Elements of Style by William Strunk Jr. and E.B. White":
        return "The Elements of Style by William Strunk Jr. and E.B. White is a timeless guide to effective writing. Focused on clarity, brevity, and style, this classic manual provides rules and principles that enhance communication. Whether writing for speeches or documents, this book is an indispensable resource for refining one's written communication skills."
    case "📖 Influence: The Psychology of Persuasion by Robert B. Cialdini":
        return "Robert B. Cialdini's Influence: The Psychology of Persuasion explores the psychology behind why people say yes and how individuals can become more persuasive. Cialdini identifies key principles of influence, such as reciprocity, commitment, and authority. This book is a must-read for those seeking to understand the dynamics of persuasion and communication in various contexts."
    case "📖 Dale Carnegie's Lifetime Plan for Success by Dale Carnegie":
        return "Dale Carnegie's Lifetime Plan for Success is a compilation of timeless principles from the renowned author of How to Win Friends and Influence People. Dale Carnegie's insights on communication, relationship-building, and personal development are distilled into actionable advice for achieving success in both personal and professional endeavors. This book serves as a guide to effective communication and living a fulfilling life."
    case "📖 Silent Spring by Rachel Carson":
        return "Silent Spring by Rachel Carson is a groundbreaking environmental classic that exposed the detrimental effects of pesticides on the environment, particularly on bird populations. Carson's passionate and meticulously researched work played a pivotal role in inspiring the environmental movement. This book serves as a powerful call to action, urging readers to consider the impact of human activities on the natural world."
    case "📖 This Changes Everything by Naomi Klein":
        return "Naomi Klein's This Changes Everything delves into the intersection of climate change and economic systems. Klein argues that addressing climate change requires a fundamental reevaluation of capitalism. She explores the potential for transformative change and the role of grassroots movements in shaping a sustainable and just future. This book challenges readers to rethink the relationship between the economy, society, and the environment."
    case "📖 Braiding Sweetgrass by Robin Wall Kimmerer":
        return "Braiding Sweetgrass by Robin Wall Kimmerer is a unique blend of indigenous wisdom, scientific knowledge, and personal reflection. Kimmerer, a botanist and member of the Citizen Potawatomi Nation, explores the deep connections between humans and the natural world. Through storytelling, she encourages readers to develop a reciprocal relationship with the Earth, fostering a sense of gratitude and responsibility towards the environment."
    case "📖 The Sixth Extinction by Elizabeth Kolbert":
        return "Elizabeth Kolbert's The Sixth Extinction provides a sobering examination of the ongoing mass extinction event caused by human activities. Drawing on scientific research, Kolbert explores the history of past extinctions and the alarming rate at which species are disappearing today. This book serves as a wake-up call, highlighting the urgent need for conservation and environmental stewardship to prevent further biodiversity loss."
    case "📖 Doughnut Economics by Kate Raworth":
        return "In Doughnut Economics, Kate Raworth introduces a regenerative economic model that takes into account both social and environmental considerations. Raworth challenges traditional economic thinking and proposes a doughnut framework that balances the needs of people and the planet. This book offers a visionary approach to economic development that aligns with the goal of creating a sustainable and equitable future."
    case "📖 Cosmos by Carl Sagan":
        return "Cosmos by Carl Sagan is a captivating exploration of the universe and our place in it. Sagan, an astrophysicist and science communicator, takes readers on a cosmic journey, addressing the wonders of astronomy, the origins of life, and the potential for extraterrestrial intelligence. This classic work blends science and philosophy, inspiring readers to contemplate the grandeur of the cosmos."
    case "📖 A Short History of Nearly Everything by Bill Bryson":
        return "Bill Bryson's A Short History of Nearly Everything is a witty and accessible journey through the history of science. Bryson covers a wide range of scientific disciplines, unraveling the complexities of the universe, Earth, and life itself. With a keen sense of humor, Bryson makes complex scientific concepts understandable and highlights the human stories behind groundbreaking discoveries."
    case "📖 The Elegant Universe by Brian Greene":
        return "The Elegant Universe by Brian Greene explores the fascinating world of string theory and the quest for a unified theory of physics. Greene, a theoretical physicist, takes readers on a journey through the complexities of the universe, from the smallest subatomic particles to the vastness of space. This book provides insights into the cutting-edge of theoretical physics in an engaging and accessible manner."
    case "📖 Sapiens: A Brief History of Humankind by Yuval Noah Harari":
        return "In Sapiens, Yuval Noah Harari provides a thought-provoking overview of the history of the human species. Harari examines the key milestones that shaped human evolution, from the emergence of Homo sapiens to the development of complex societies. This book combines anthropology, history, and science to offer a compelling narrative that prompts readers to rethink their understanding of human history."
    case "📖 The Immortal Life of Henrietta Lacks by Rebecca Skloot":
        return "The Immortal Life of Henrietta Lacks by Rebecca Skloot tells the true story of Henrietta Lacks, whose cells were taken without her knowledge and became instrumental in scientific research. Skloot explores the ethical implications of medical advancements and the impact of Henrietta's cells on medicine. This compelling narrative weaves together science, ethics, and personal history, shedding light on the intersection of science and humanity."
    case "📖 The Blue Zones by Dan Buettner":
        return "In The Blue Zones, Dan Buettner explores regions of the world where people live longer, healthier lives, known as Blue Zones. Buettner investigates the lifestyle and dietary habits of these communities, distilling key principles for longevity. This book provides practical insights for readers seeking to adopt healthier habits and improve their overall well-being."
    case "📖 How Not to Die by Michael Greger":
        return "How Not to Die by Michael Greger examines common lifestyle-related diseases and offers evidence-based advice on preventing and reversing them through diet and lifestyle changes. Greger, a physician, presents a comprehensive guide to plant-based nutrition and its potential impact on health. This book empowers readers to make informed choices for a longer and healthier life."
    case "📖 The China Study by T. Colin Campbell":
        return "The China Study by T. Colin Campbell presents a comprehensive examination of the relationship between diet and health. Based on a large-scale study in China, Campbell explores the impact of nutrition on diseases such as cancer, heart disease, and diabetes. The book advocates for a plant-based diet and challenges conventional wisdom about nutrition and its role in preventing chronic illnesses."
    case "📖 You Are What You Eat by Gillian McKeith":
        return "In You Are What You Eat, Gillian McKeith emphasizes the connection between diet and overall health. McKeith, a nutritionist, provides practical advice on improving eating habits and making informed food choices. The book includes tips for assessing one's diet, understanding nutritional needs, and incorporating healthier options into daily life."
    case "📖 Eat, Pray, Love by Elizabeth Gilbert":
        return "Eat, Pray, Love by Elizabeth Gilbert is a memoir that chronicles the author's journey of self-discovery and healing. In the Eat section, Gilbert explores her relationship with food and the pursuit of balance. While not a traditional health guide, this book resonates with themes of mindfulness, self-care, and finding a sense of well-being."
    case "🎬 The Social Network (Available on Netflix)":
        return "The Social Network tells the dramatic story of the founding of Facebook and the legal battles that ensued among its co-founders. Directed by David Fincher, the film explores themes of ambition, friendship, and the impact of social media on modern society."
    case "🎬 Pirates of Silicon Valley (Available on Amazon Prime)":
        return "Pirates of Silicon Valley provides a historical perspective on the rise of the personal computer industry and the competition between Apple Inc. and Microsoft. This TV movie delves into the personalities of Steve Jobs and Bill Gates, showcasing the early days of the tech revolution."
    case "🎬 Moneyball (Available on Netflix)":
        return "Moneyball is based on the true story of how the Oakland Athletics' general manager, Billy Beane, used innovative statistical methods to build a competitive baseball team on a limited budget. The film explores the intersection of sports, economics, and analytics, emphasizing creative problem-solving in the face of challenges."
    case "🎬 The Pursuit of Happyness (Available on Netflix)":
        return "The Pursuit of Happyness is a biographical drama starring Will Smith as Chris Gardner, a struggling salesman facing homelessness while pursuing a career as a stockbroker. The film explores themes of perseverance, father-son relationships, and the pursuit of one's dreams against all odds."
    case "🎬 Joy (Available on Hulu)":
        return "Joy is a biographical film starring Jennifer Lawrence as Joy Mangano, the inventor of the Miracle Mop. The movie chronicles Joy's journey as she overcomes obstacles and builds a business empire. It explores the challenges and triumphs of entrepreneurship, creativity, and the pursuit of success."
    case "🎬 Frida (Available on Hulu)":
        return "Frida is a biographical drama about the life of Mexican artist Frida Kahlo. Starring Salma Hayek in the titular role, the film explores Kahlo's tumultuous life, her relationships, and her contributions to art. Frida captures the passion and creativity of this iconic painter."
    case "🎬 Big Eyes (Available on Hulu)":
        return "Big Eyes is a biographical drama directed by Tim Burton, telling the story of Margaret and Walter Keane. The film explores the art world's dynamics in the 1950s and '60s, focusing on Margaret's struggle for recognition as the true creator of the big-eyed waifs paintings."
    case "🎬 Loving Vincent (Available on Amazon Prime)":
        return "Loving Vincent is a unique animated film that brings the paintings of Vincent van Gogh to life. Each frame of the movie is an oil painting, providing a visually stunning and immersive experience. The film investigates the circumstances surrounding Van Gogh's death and celebrates his artistic legacy."
    case "🎬 Exit Through the Gift Shop (Available on Hulu)":
        return "Exit Through the Gift Shop is a documentary film directed by the elusive street artist Banksy. The film explores the world of street art and follows the journey of Thierry Guetta, a Frenchman who evolves from a documentary filmmaker to an artist himself. Blurring the lines between authenticity and artifice, the film raises questions about the nature of art."
    case "🎬 Basquiat (Available on HBO Max)":
        return "Basquiat is a biographical drama that chronicles the life of Jean-Michel Basquiat, a prominent figure in the 1980s New York art scene. The film delves into Basquiat's rise to fame, his artistic genius, and the challenges he faced. Starring Jeffrey Wright as Basquiat, the movie provides a glimpse into the world of contemporary art and its complexities."
    case "🎬 The Imitation Game (Available on Netflix)":
        return "The Imitation Game is a historical drama that follows the life of Alan Turing, a brilliant mathematician and codebreaker during World War II. Benedict Cumberbatch stars as Turing, who played a pivotal role in breaking the Enigma code. The film explores Turing's contributions to computer science and cryptography."
    case "🎬 The Matrix (Available on Hulu)":
        return "The Matrix is a groundbreaking science fiction film directed by the Wachowskis. The story revolves around a computer hacker named Neo (Keanu Reeves) who discovers a dystopian world controlled by machines. Filled with iconic visuals and philosophical themes, The Matrix explores the intersection of technology and reality."
    case "🎬 Hackers (Available on Amazon Prime)":
        return "Hackers is a cult classic that follows a group of young computer hackers as they navigate the digital landscape. The film explores hacking culture, cybercrime, and the cat-and-mouse game between hackers and authorities. With a mix of action and humor, Hackers offers a nostalgic look at the early days of the internet."
    case "🎬 The Social Dilemma (Available on Netflix)":
        return "The Social Dilemma is a documentary that delves into the impact of social media and technology on society. Featuring interviews with tech insiders, the film explores the ethical implications of social media platforms, algorithms, and their influence on human behavior. It raises important questions about the consequences of our digital connectedness."
    case "🎬 Jobs (Available on Hulu)":
        return "Jobs is a biographical drama that portrays the life of Steve Jobs, co-founder of Apple Inc. Ashton Kutcher takes on the role of Jobs, chronicling his journey from college dropout to the visionary leader of one of the most influential tech companies in the world. The film explores Jobs' innovation, leadership, and impact on the tech industry."
    case "🎬 The King's Speech (Available on Netflix)":
        return "The King's Speech is a historical drama based on the true story of King George VI of Britain, who struggles with a speech impediment. With the help of a speech therapist, played by Geoffrey Rush, the king overcomes his challenges to deliver a crucial wartime address. The film explores themes of resilience, friendship, and the power of effective communication."
    case "🎬 The Great Debaters (Available on Hulu)":
        return "The Great Debaters is an inspirational drama based on the true story of the Wiley College debate team in the 1930s. Denzel Washington, who also directs the film, portrays the team's coach. The movie highlights the team's journey to overcome racial and social barriers through the art of persuasive communication and debate."
    case "🎬 The Speeches of TED Talks (Available on TED's website)":
        return "While not a traditional movie, TED Talks offer a diverse collection of powerful speeches on a wide range of topics. From technology to psychology to art, TED Talks provide insights and inspiration from experts and thought leaders around the world. The platform offers a wealth of captivating speeches for those looking to enhance their communication skills."
    case "🎬 The Pursuit of Happyness (Available on Netflix) 🎬":
        return "The Pursuit of Happyness is a biographical drama based on the life of Chris Gardner, played by Will Smith. The film follows Gardner's journey as a struggling salesman facing homelessness while pursuing a career in finance. The story emphasizes the importance of perseverance and effective communication in overcoming life's challenges."
    case "🎬 Dead Poets Society (Available on Disney+)":
        return "Dead Poets Society is a coming-of-age drama set in a conservative boys' preparatory school. Robin Williams plays John Keating, an English teacher who inspires his students to appreciate poetry, seize the day, and challenge conformity. The film explores the transformative power of words and the impact of effective communication on personal growth."
    case "🎬 An Inconvenient Truth (Available on Hulu)":
        return "An Inconvenient Truth is a documentary featuring former Vice President Al Gore as he presents evidence of climate change and advocates for urgent action to address the global environmental crisis. The film provides a compelling overview of the impact of human activities on the planet and the importance of environmental awareness."
    case "🎬 Before the Flood (Available on Disney+)":
        return "Before the Flood is a documentary produced and narrated by Leonardo DiCaprio, exploring the effects of climate change and the potential solutions to mitigate its impact. DiCaprio travels the globe, interviewing scientists, activists, and world leaders to raise awareness about the urgent need for environmental action."
    case "🎬 Chasing Ice (Available on Amazon Prime)":
        return "Chasing Ice follows photographer James Balog as he documents the melting of glaciers through time-lapse photography. The film captures stunning visuals of the changing landscape, providing a visceral look at the consequences of climate change. Balog's work serves as a powerful call to action to address the environmental challenges we face."
    case "🎬 Our Planet (Available on Netflix)":
        return "Our Planet is a nature documentary series narrated by Sir David Attenborough. The series explores the beauty of the natural world while highlighting the impact of climate change on ecosystems and wildlife. Through breathtaking visuals and informative storytelling, Our Planet encourages viewers to appreciate and protect the Earth's biodiversity."
    case "🎬 The True Cost (Available on Amazon Prime)":
        return "The True Cost is a documentary that examines the environmental and social impact of the fashion industry. The film explores the consequences of fast fashion on the environment, workers, and consumers. By exposing the hidden costs of the clothing industry, it encourages viewers to make more conscious and sustainable choices."
    case "🎬 Apollo 13 (Available on Hulu)":
        return "Apollo 13 is a historical drama that recounts the ill-fated Apollo 13 mission to the moon. Directed by Ron Howard, the film follows the real-life events of the mission's technical challenges and the efforts of NASA and the astronauts to safely return to Earth. It showcases the ingenuity and problem-solving skills required in the face of adversity."
    case "🎬 The Theory of Everything (Available on Netflix)":
        return "The Theory of Everything is a biographical drama that chronicles the life of physicist Stephen Hawking and his first wife, Jane. The film explores Hawking's groundbreaking work in theoretical physics, his struggle with motor neuron disease, and the personal dynamics of their relationship. It provides a glimpse into the complexities of science and human experience."
    case "🎬 Contact (Available on HBO Max)":
        return "Contact, based on Carl Sagan's novel, is a science fiction film that explores the quest for extraterrestrial life. Jodie Foster plays Dr. Ellie Arroway, a scientist who receives a mysterious signal from outer space. The film delves into the intersection of science, faith, and the search for meaning in the cosmos."
    case "🎬 The Martian (Available on Amazon Prime)":
        return "The Martian is a science fiction survival film directed by Ridley Scott. Matt Damon stars as an astronaut stranded on Mars after his crew assumes he is dead. The film follows his ingenuity and determination to survive using scientific knowledge and resourcefulness. It highlights problem-solving in the context of space exploration."
    case "🎬 Hidden Figures (Available on Disney+)":
        return "Hidden Figures is a historical drama that celebrates the contributions of African-American women mathematicians to NASA's space program. The film tells the inspiring true story of Katherine Johnson, Dorothy Vaughan, and Mary Jackson, who played crucial roles in the early days of space exploration, overcoming racial and gender barriers."
    case "🎬 Super Size Me (Available on Hulu)":
        return "Super Size Me is a documentary directed by and starring Morgan Spurlock. The film follows Spurlock as he embarks on a 30-day experiment, consuming only McDonald's fast food and documenting the impact on his health. The film explores the consequences of a diet high in processed and fast food."
    case "🎬 Forks Over Knives (Available on Netflix)":
        return "Forks Over Knives is a documentary that examines the health benefits of a plant-based diet. The film presents scientific evidence supporting the idea that a whole-food, plant-based diet can prevent and even reverse certain chronic diseases. It explores the impact of food choices on personal health and well-being."
    case "🎬 Fat, Sick & Nearly Dead (Available on Amazon Prime)":
        return "Fat, Sick & Nearly Dead follows Joe Cross, an Australian filmmaker, on his journey to regain his health by adopting a juice-only diet. The documentary explores the challenges and transformations as Cross travels across the United States, inspiring others to consider the impact of their dietary choices."
    case "🎬 Food, Inc. (Available on Hulu)":
        return "Food, Inc. is a documentary that examines the industrial food production system in the United States. The film exposes the environmental, health, and ethical implications of the modern food industry. It raises awareness about the source of our food and encourages viewers to make informed choices about what they eat."
    case "🎬 That Sugar Film (Available on Amazon Prime)":
        return "That Sugar Film is a documentary that follows Damon Gameau as he undergoes an experiment to consume a diet high in hidden sugars commonly found in processed foods. The film explores the impact of excess sugar consumption on health, showcasing the potential health risks associated with sugar-rich diets."
    case "🎞️ Shark Tank (Available on Hulu)":
        return "Shark Tank is a reality TV show where aspiring entrepreneurs pitch their business ideas to a panel of wealthy investors, known as sharks. The entrepreneurs seek investment in exchange for equity in their businesses. The sharks evaluate the pitches and negotiate deals, providing insight into the world of business and entrepreneurship."
    case "🎞️ Silicon Valley (Available on HBO)":
        return "Silicon Valley is a comedic TV series that satirizes the tech industry and startup culture in Silicon Valley. The show follows a group of software developers as they navigate the challenges and absurdities of launching a startup. With humor and wit, it provides a fictional yet insightful take on the entrepreneurial world."
    case "🎞️ The Profit (Available on Hulu)":
        return "The Profit is a reality TV series hosted by Marcus Lemonis. In each episode, Lemonis invests his own money in struggling businesses and works closely with the owners to turn their companies around. The show explores the dynamics of business leadership, management, and the challenges entrepreneurs face in revitalizing their ventures."
    case "🎞️ Billions (Available on Showtime)":
        return "Billions is a drama series that revolves around the high-stakes world of finance and power. The show follows the intense rivalry between a U.S. Attorney, played by Paul Giamatti, and a hedge fund manager, played by Damian Lewis. Billions explores themes of wealth, ambition, and the ethical complexities of the financial industry."
    case "🎞️ Startup (Available on Crackle)":
        return "Startup is a crime drama series that centers around a group of unlikely partners—a banker, a hacker, and a gang lord's son—as they launch a digital currency startup. The series delves into the world of cryptocurrency, entrepreneurship, and the challenges faced by those trying to disrupt established systems."
    case "🎞️ Abstract: The Art of Design (Available on Netflix)":
        return "Abstract: The Art of Design is a documentary series that profiles leading designers from various disciplines, including graphic design, illustration, architecture, and more. Each episode provides an in-depth look at the creative process, inspirations, and impact of these influential artists on their respective fields."
    case "🎞️ Work of Art: The Next Great Artist (Available on Amazon Prime)":
        return "Work of Art: The Next Great Artist is a reality competition series where aspiring contemporary artists compete in challenges to showcase their skills and creativity. The show is hosted by China Chow, and renowned art critic Jerry Saltz serves as a judge. Contestants face various artistic challenges to prove they have the potential to be the next great artist."
    case "🎞️ Art: 21 (Available on PBS)":
        return "Art: 21 is an acclaimed documentary series that explores contemporary art and the work of diverse contemporary artists. The series provides an intimate look into the artists' lives, processes, and the themes that drive their creative expression. Art: 21 offers a comprehensive view of contemporary art practices."
    case "🎞️ The Joy of Painting with Bob Ross (Available on Amazon Prime)":
        return "The Joy of Painting with Bob Ross is a beloved instructional painting TV series hosted by the iconic artist Bob Ross. Known for his soothing demeanor and happy little trees, Ross guides viewers through the creation of landscapes and nature scenes. The series has become a cultural phenomenon, inspiring many to take up painting."
    case "🎞️ Great Art (Available on Hulu)":
        return "Great Art is a documentary series that explores the lives and works of some of the world's most celebrated artists throughout history. Each episode focuses on a specific artist, delving into their artistic contributions, personal struggles, and the historical context in which they created their masterpieces."
    case "🎞️ Mr. Robot (Available on Amazon Prime)":
        return "Mr. Robot is a psychological thriller that follows Elliot Alderson, a cybersecurity expert and hacker with a complex personal life. The series explores themes of identity, societal issues, and the consequences of technology. With its gripping narrative and unique storytelling, Mr. Robot delves into the dark side of the tech world."
    case "🎞️ Halt and Catch Fire (Available on Netflix)":
        return "Halt and Catch Fire is a drama series set in the tech industry during the personal computer revolution of the early 1980s. The show follows a group of engineers and businesspeople as they navigate the challenges of innovation, competition, and personal relationships. It provides a historical perspective on the evolution of technology."
    case "🎞️ Silicon Valley (Available on HBO) 🎞️":
        return "Silicon Valley is a comedic TV series that satirizes the tech industry and startup culture in Silicon Valley. The show follows a group of software developers as they navigate the challenges and absurdities of launching a startup. With humor and wit, it provides a fictional yet insightful take on the entrepreneurial and tech world."
    case "🎞️ Black Mirror (Available on Netflix)":
        return "Black Mirror is an anthology series that explores the dark and often dystopian aspects of modern society and technology. Each episode presents a standalone story that examines the impact of advanced technology on human behavior, morality, and society. Black Mirror offers thought-provoking and often unsettling reflections on our tech-dependent world."
    case "🎞️ Westworld (Available on HBO)":
        return "Westworld is a science fiction series set in a futuristic amusement park where guests interact with lifelike android hosts. The series explores themes of consciousness, free will, and the ethical implications of artificial intelligence. With intricate storytelling and philosophical undertones, Westworld blurs the line between humanity and technology."
    case "🎞️ The West Wing (Available on HBO Max)":
        return "The West Wing is a political drama series that follows the lives of the staff working in the West Wing of the White House during the fictional presidency of Josiah Bartlet. The show explores political communication, policymaking, and the interpersonal dynamics of those in power, offering a behind-the-scenes look at the presidency."
    case "🎞️ The Crown (Available on Netflix)":
        return "The Crown is a historical drama that chronicles the reign of Queen Elizabeth II. The series explores the challenges of royal communication, political intrigue, and the personal sacrifices made by the British royal family. The Crown provides a nuanced portrayal of the complexities of monarchy and public perception."
    case "🎞️ Mad Men (Available on Amazon Prime)":
        return "Mad Men is a drama series set in the 1960s, focusing on the lives of advertising executives at an advertising agency in New York City. The show delves into the world of advertising, exploring the art of persuasion, interpersonal communication, and the changing social norms of the time."
    case "🎞️ TED Talks: The Education Revolution (Available on Netflix)":
        return "This TED Talk explores innovative approaches to education. Various speakers share their insights and experiences, discussing ways to transform education and communication in order to inspire learning and creativity. The talks cover topics such as personalized learning, technology in education, and reimagining the classroom."
    case "🎞️ Black Mirror: Nosedive (Available on Netflix)":
        return "Nosedive is an episode from the anthology series Black Mirror. Set in a future society where individuals rate each other's social interactions, the episode explores the impact of social media and constant evaluation on communication and personal relationships. It serves as a cautionary tale about the consequences of a reputation-based society."
    case "🎞️ Years of Living Dangerously (Available on Hulu)":
        return "Years of Living Dangerously is a documentary series that explores the impact of climate change and environmental issues around the world. The series features celebrity correspondents and experts who investigate and report on environmental challenges, providing insights into the urgency of addressing climate change."
    case "🎞️ Rotten (Available on Netflix)":
        return "Rotten is a documentary series that delves into the global food industry, examining issues such as food fraud, illegal fishing, and the environmental impact of agriculture. Each episode exposes the complexities of the food supply chain and its implications for the environment, sustainability, and ethical practices."
    case "🎞️ Planet Earth II (Available on BBC America)":
        return "Planet Earth II is a nature documentary series that showcases the beauty and diversity of wildlife around the globe. The series uses advanced filming techniques to capture stunning visuals and intimate moments in various ecosystems. Planet Earth II emphasizes the importance of environmental conservation and the delicate balance of nature."
    case "🎞️ Our Planet (Available on Netflix)":
        return "Our Planet is a nature documentary series narrated by Sir David Attenborough. The series explores the wonders of the natural world, highlighting the beauty of Earth's ecosystems and the impact of climate change on wildlife. Our Planet serves as a call to action for environmental conservation and sustainable practices."
    case "🎞️ Breaking Boundaries: The Science of Our Planet (Available on Netflix)":
        return "Breaking Boundaries is a documentary that explores the interconnected systems of the Earth and the impact of human activities on the planet. The film, narrated by Sir David Attenborough, emphasizes the importance of understanding and addressing environmental challenges to ensure the health of the planet for future generations."
    case "🎞️ Cosmos: A Spacetime Odyssey (Available on Disney+)":
        return "Cosmos: A Spacetime Odyssey is a documentary series that serves as a sequel to Carl Sagan's Cosmos: A Personal Voyage. Hosted by astrophysicist Neil deGrasse Tyson, the series explores the wonders of the universe, scientific discoveries, and the history of scientific inquiry. It presents complex scientific concepts in an engaging and accessible way."
    case "🎞️ Breaking Bad (Available on Netflix)":
        return "Breaking Bad is a critically acclaimed drama series that follows the transformation of Walter White, a high school chemistry teacher turned methamphetamine producer. While the series is primarily a crime drama, it incorporates elements of chemistry and science, offering a unique perspective on the consequences of choices and the chemistry of the drug trade."
    case "🎞️ The X-Files (Available on Hulu)":
        return "The X-Files is a science fiction and mystery series that follows FBI agents Fox Mulder and Dana Scully as they investigate unsolved and paranormal cases, known as the X-Files. The series explores themes of extraterrestrial life, government conspiracies, and unexplained phenomena, blending science fiction with investigative storytelling."
    case "🎞️ Stranger Things (Available on Netflix)":
        return "Stranger Things is a science fiction horror series set in the 1980s. The show follows a group of kids in the town of Hawkins as they encounter supernatural occurrences, government experiments, and a parallel dimension known as the Upside Down. Stranger Things combines elements of science fiction, horror, and adventure."
    case "🎞️ Bill Nye Saves the World (Available on Netflix)":
        return "Bill Nye Saves the World is a talk show hosted by Bill Nye, the Science Guy. In each episode, Nye explores scientific topics and their relevance to society, featuring interviews, experiments, and discussions with experts. The show aims to promote scientific literacy and engage viewers in understanding the impact of science on everyday life."
    case "🎞️ Rotten (Available on Netflix) 🎞️":
        return "Rotten is a documentary series that explores various aspects of the global food industry, including issues related to production, distribution, and consumption. Each episode delves into the complexities of the food supply chain, highlighting ethical concerns, environmental impact, and the challenges faced by those involved in the industry."
    case "🎞️ Cooked (Available on Netflix)":
        return "Cooked is a documentary series based on Michael Pollan's book of the same name. The series explores the four fundamental elements of cooking: fire, water, air, and earth. Each episode delves into the cultural, historical, and scientific aspects of cooking, emphasizing the connection between food, health, and community."
    case "🎞️ The Game Changers (Available on Netflix)":
        return "The Game Changers is a documentary that explores the benefits of a plant-based diet, particularly for athletes and individuals seeking optimal health. The film features interviews with athletes, scientists, and experts, discussing the impact of plant-based nutrition on performance, recovery, and overall well-being."
    case "🎞️ Salt, Fat, Acid, Heat (Available on Netflix)":
        return "Salt, Fat, Acid, Heat is a culinary documentary series based on Samin Nosrat's bestselling book. The series explores the fundamental elements of good cooking and how they contribute to delicious and balanced meals. Each episode focuses on one of the essential components, providing insights into the art and science of cooking."
    case "🎞️ Chef's Table (Available on Netflix)":
        return "Chef's Table is a documentary series that profiles renowned chefs from around the world. Each episode offers an intimate look into the life, creativity, and culinary philosophy of a different chef. The series highlights the artistry and innovation in the world of fine dining while exploring the connection between food and culture."
    case "🎙️ How I Built This (Available on Spotify)":
        return "Hosted by Guy Raz, How I Built This features interviews with entrepreneurs, innovators, and business leaders. Each episode explores the stories behind successful companies and the journeys of the individuals who built them, providing insights into the challenges and triumphs of entrepreneurship."
    case "🎙️ The Tim Ferriss Show (Available on Spotify)":
        return "Hosted by Tim Ferriss, author and entrepreneur, The Tim Ferriss Show is a podcast where Tim interviews high-achievers and experts from various fields. The conversations delve into their habits, routines, and the strategies they employ for success. The podcast covers a wide range of topics, offering valuable insights for entrepreneurs."
    case "🎙️ StartUp Podcast (Available on Spotify)":
        return "StartUp Podcast provides a behind-the-scenes look at the challenges and realities of starting a business. The podcast, produced by Gimlet Media, follows different startups and entrepreneurs, documenting their journeys from inception to growth. It offers a candid portrayal of the entrepreneurial experience."
    case "🎙️ The GaryVee Audio Experience (Available on Spotify)":
        return "Hosted by Gary Vaynerchuk, a serial entrepreneur and social media expert, The GaryVee Audio Experience features a mix of keynotes, interviews, and advice on entrepreneurship, marketing, and personal development. Gary Vee shares insights and practical tips for navigating the modern business landscape."
    case "🎙️ Smart Passive Income (Available on Spotify)":
        return "Hosted by Pat Flynn, Smart Passive Income focuses on passive income strategies and online business. The podcast covers topics such as affiliate marketing, online courses, and entrepreneurship. Pat interviews successful entrepreneurs and experts, providing actionable advice for those looking to build passive income streams."
    case "🎙️ Art Juice (Available on Spotify)":
        return "*Description:* Art Juice is a podcast hosted by artists Alice Sheridan and Louise Fletcher. The hosts engage in candid conversations about the creative process, art techniques, and the challenges and joys of being an artist. The podcast is a mix of interviews, art discussions, and practical advice for artists."
    case "🎙️ The Jealous Curator: ART FOR YOUR EAR (Available on Spotify)":
        return "Hosted by Danielle Krysa, The Jealous Curator: ART FOR YOUR EAR features interviews with contemporary artists from various disciplines. The podcast explores the stories behind the art, delving into the inspirations, challenges, and processes of the featured artists. It offers a glimpse into the art world and the lives of creatives."
    case "🎙️ The Savvy Painter Podcast (Available on Spotify)":
        return "The Savvy Painter Podcast is hosted by artist Antrese Wood. The podcast focuses on the experiences and insights of artists, providing a platform for them to share their artistic journeys, creative processes, and the lessons they've learned along the way. The conversations aim to inspire and support fellow artists."
    case "🎙️ Art Grind (Available on Spotify)":
        return "Art Grind is a podcast hosted by artists D.W. and Marshall. The podcast explores contemporary art and culture through engaging discussions, interviews, and reviews. The hosts delve into the art world's diverse topics, offering perspectives on art history, exhibitions, and the evolving landscape of the art scene."
    case "🎙️ Art Detective (Available on Spotify)":
        return "Art Detective is a podcast that uncovers the stories behind famous works of art. Host Dr. Janina Ramirez explores the historical, cultural, and artistic context of iconic artworks, providing listeners with insights into the mysteries and meanings behind the masterpieces."
    case "🎙️ Syntax - Tasty Web Development Treats (Available on Spotify)":
        return "Syntax is a podcast hosted by Wes Bos and Scott Tolinski, both web developers and educators. The podcast covers a wide range of web development topics, offering insights, tips, and discussions on JavaScript, CSS, and other web technologies. The hosts aim to make complex web development concepts easy to understand and enjoyable."
    case "🎙️ CodeNewbie (Available on Spotify)":
        return "CodeNewbie is a podcast hosted by Saron Yitbarek, focusing on the experiences of people learning to code and breaking into the tech industry. The podcast features interviews with individuals at different stages of their coding journey, offering diverse perspectives on the challenges and successes of learning to code."
    case "🎙️ Software Engineering Daily (Available on Spotify)":
        return "Software Engineering Daily is a daily podcast that explores a wide range of topics related to software engineering, development, and technology. Hosted by various experts and industry professionals, each episode delves into discussions, interviews, and insights on current trends, tools, and practices in software engineering."
    case "🎙️ ShopTalk Show (Available on Spotify)":
        return "ShopTalk Show is a podcast hosted by Chris Coyier and Dave Rupert, both experts in web design and development. The podcast covers various aspects of front-end web development, design, and industry trends. The hosts answer listener questions, discuss current issues, and provide practical advice for web developers."
    case "🎙️ The Changelog (Available on Spotify)":
        return "The Changelog is a podcast that covers the world of open source software and technology. Hosted by Adam Stacoviak and Jerod Santo, the podcast features interviews with key figures in the open source community. It explores the latest developments, projects, and stories in the world of software and technology."
    case "🎙️ The Art of Charm (Available on Spotify)":
        return "The Art of Charm is a podcast hosted by Jordan Harbinger and AJ Harbinger, focusing on social dynamics, communication skills, and personal development. The podcast features interviews with experts in psychology, communication, and relationship-building, offering practical tips for enhancing social interactions."
    case "🎙️ The Moth (Available on Spotify)":
        return "The Moth is a storytelling podcast that presents real people sharing personal and often poignant stories. The stories are told live on stage, covering a wide range of themes and emotions. The Moth highlights the art of storytelling and the power of effective communication to connect with audiences."
    case "🎙️ Talk Nerdy with Cara Santa Maria (Available on Spotify)":
        return "Talk Nerdy with Cara Santa Maria is a podcast hosted by science communicator Cara Santa Maria. The podcast features interviews with scientists, educators, and experts across various fields. Cara engages in insightful conversations that bridge the gap between science and effective communication for a general audience."
    case "🎙️ The Public Speaker's Quick and Dirty Tips for Improving Your Communication Skills (Available on Spotify)":
        return "The Public Speaker's Quick and Dirty Tips for Improving Your Communication Skills is a podcast hosted by Lisa B. Marshall. The podcast provides practical advice and tips for enhancing communication skills in various contexts, including public speaking, workplace communication, and interpersonal relationships."
    case "🎙️ The Vocal Fries Podcast (Available on Spotify)":
        return "The Vocal Fries Podcast is a linguistic podcast hosted by Megan Figueroa and Carrie Gillon. The podcast explores topics related to linguistics, language, and communication, with a focus on issues of social justice and inclusivity. It provides a unique perspective on language and its role in society."
    case "🎙️ Sustainable World Radio (Available on Spotify)":
        return "Sustainable World Radio is a podcast hosted by Jill Cloutier. The podcast explores topics related to sustainability, permaculture, and ecological living. Featuring interviews with experts and practitioners, it offers insights into sustainable practices, regenerative agriculture, and solutions for creating a more sustainable world."
    case "🎙️ The Regenerative Journey with Charlie Arnott (Available on Spotify)":
        return "The Regenerative Journey is a podcast hosted by Charlie Arnott, an advocate for regenerative farming practices. The podcast features conversations with farmers, thought leaders, and experts in regenerative agriculture. It explores the principles of regenerative farming and its positive impact on the environment."
    case "🎙️ Bioneers: Revolution from the Heart of Nature (Available on Spotify)":
        return "Bioneers: Revolution from the Heart of Nature is a podcast that shares insights into solutions for environmental and social challenges. Hosted by Kenny Ausubel, the podcast features interviews with innovators, environmentalists, and change-makers who are working towards a more sustainable and equitable future."
    case "🎙️ The Green Dreamer (Available on Spotify)":
        return "The Green Dreamer is a podcast hosted by Kamea Chayne. The podcast explores topics related to sustainability, environmental justice, and holistic well-being. It features interviews with thought leaders and experts who share their insights on creating positive change for the planet."
    case "🎙️ The Permaculture Podcast (Available on Spotify)":
        return "The Permaculture Podcast is a podcast hosted by Scott Mann. The podcast delves into permaculture, a design philosophy centered around sustainable living and regenerative practices. Featuring interviews with permaculture practitioners, the podcast explores ways to create resilient and ecologically harmonious systems."
    case "🎙️ StartUp Podcast (Available on Spotify) 🎙️":
        return "StartUp Podcast is a documentary-style podcast that provides an inside look at the challenges and successes of starting a business. While not exclusively scientific, it offers insights into the entrepreneurial journey, business dynamics, and the intersection of innovation and commerce."
    case "🎙️ Science Vs (Available on Spotify)":
        return "Science Vs is a podcast that examines popular myths, fads, and trends by putting them to the test of scientific scrutiny. Hosted by Wendy Zukerman, the podcast explores topics ranging from diets to medical treatments, separating fact from fiction using evidence-based science."
    case "🎙️ Radiolab (Available on Spotify)":
        return "Radiolab is a critically acclaimed science and philosophy podcast that explores captivating and thought-provoking topics. Hosted by Jad Abumrad and Robert Krulwich, the podcast combines storytelling, interviews, and sound design to present scientific and philosophical ideas in an engaging and accessible way."
    case "🎙️ TED Talks Science and Medicine (Available on Spotify)":
        return "TED Talks Science and Medicine is a curated collection of TED Talks focusing on various scientific and medical topics. The talks feature experts from different fields sharing their groundbreaking research, innovative ideas, and perspectives on the latest advancements in science and medicine."
    case "🎙️ The Infinite Monkey Cage (Available on Spotify)":
        return "The Infinite Monkey Cage is a science and comedy podcast hosted by physicist Brian Cox and comedian Robin Ince. The podcast combines humor and intellectual exploration as it explores scientific concepts, theories, and advancements with the help of expert guests and comedic banter."
    case "🎙️ The Model Health Show (Available on Spotify)":
        return "The Model Health Show is hosted by health and fitness expert Shawn Stevenson. The podcast covers a wide range of topics related to health, wellness, and personal development. Each episode features insightful discussions, interviews with experts, and practical tips for optimizing physical and mental well-being."
    case "🎙️ FoundMyFitness (Available on Spotify)":
        return "FoundMyFitness is a podcast hosted by Dr. Rhonda Patrick, a biomedical scientist. The podcast explores various aspects of health, longevity, and performance optimization. Dr. Patrick delves into scientific research and interviews experts to provide in-depth insights into nutrition, exercise, and overall health."
    case "🎙️ Bulletproof Radio (Available on Spotify)":
        return "Bulletproof Radio is hosted by Dave Asprey, a biohacker and entrepreneur. The podcast covers topics related to biohacking, health optimization, and personal development. Dave interviews experts in various fields to explore cutting-edge techniques for improving physical and mental performance."
    case "🎙️ The Rich Roll Podcast (Available on Spotify)":
        return "The Rich Roll Podcast is hosted by former professional athlete Rich Roll. The podcast features interviews with a diverse range of guests, including athletes, authors, and experts in health and wellness. The discussions focus on personal transformation, plant-based living, and holistic well-being."
    case "🎙️ The Mind Pump Podcast (Available on Spotify)":
        return "The Mind Pump Podcast is hosted by fitness and health experts Sal Di Stefano, Adam Schafer, and Justin Andrews. The podcast covers fitness, nutrition, and lifestyle topics, providing evidence-based information and debunking fitness myths. The hosts offer practical advice for achieving sustainable health and fitness goals."
    case "🎓 Business Administration":
        return """
    Business Administration is a versatile major that covers various aspects of managing and operating businesses. Students learn about finance, marketing, human resources, and organizational behavior. It provides a broad understanding of how businesses function and prepares individuals for leadership roles.
    
    Career Paths: Business Administrator, Operations Manager, Financial Analyst, Human Resources Manager, Marketing Specialist, Management Consultant.
    """
    case "🎓 Entrepreneurship":
        return """
Entrepreneurship is a specialized major focused on creating, developing, and managing new ventures. Students learn how to identify business opportunities, develop business plans, and navigate the challenges of starting and growing a business. It's an ideal major for those with a passion for innovation and creating their own ventures. 

Career Paths: Entrepreneur/Founder, Small Business Owner, Startup Consultant, Venture Capitalist, Business Strategist.
"""
    case "🎓 Innovation Management":
        return """
Innovation Management involves the study of fostering innovation within organizations. It explores strategies for creating a culture of innovation, managing the innovation process, and implementing new ideas to drive business growth. This major is well-suited for individuals interested in leading innovative initiatives. 

Career Paths: Innovation Manager, Research and Development Director, Product Manager, Business Development Specialist, Technology Strategist.
"""
    case "🎓 Marketing":
        return """
Marketing is the study of promoting products or services and creating strategies to connect with target audiences. Students learn about consumer behavior, market research, advertising, and digital marketing. A Marketing major is ideal for those interested in creative communication, branding, and market analysis. 

Career Paths: Marketing Manager, Brand Manager, Digital Marketing Specialist, Advertising Executive, Market Research Analyst, Public Relations Specialist.
"""
    case "🎓 Economics":
        return """
Economics is the study of how individuals, businesses, and societies allocate resources. It explores principles of supply and demand, market structures, and economic policy. An Economics major provides a solid foundation for understanding the economic factors that influence business decisions. 

Career Paths: Economist, Financial Analyst, Policy Analyst, Investment Banker, Market Researcher, Government Economist.
"""
    case "🎓 Fine Arts":
        return """
Fine Arts is a major that encompasses various forms of visual arts, including painting, sculpture, drawing, and printmaking. Students develop their artistic skills and explore different mediums to express creativity. 

Career Paths: Visual Artist, Gallery Curator, Art Educator, Art Conservator, Art Critic.
"""
    case "🎓 Graphic Design":
        return """
Graphic Design focuses on creating visual content for communication purposes. Students learn design principles, digital tools, and typography to convey messages effectively. 

Career Paths: Graphic Designer, Art Director, UX/UI Designer, Brand Identity Designer, Web Designer.
"""
    case "🎓 Architecture":
        return """
Architecture involves the design and planning of structures, emphasizing aesthetics, functionality, and sustainability. Students study architectural history, design principles, and construction technology.

Career Paths: Architect, Urban Planner, Construction Manager, Interior Architect, Sustainable Design Specialist.
"""
    case "🎓 Interior Design":
        return """
Interior Design focuses on creating functional and aesthetically pleasing interior spaces. Students learn about color theory, furniture design, spatial arrangements, and project management. 

Career Paths: Interior Designer, Space Planner, Residential Designer, Commercial Interior Designer, Furniture Designer.
"""
    case "🎓 Illustration & Animation":
        return """
Illustration & Animation involves creating visual narratives through drawings, paintings, or digital media. Students explore storytelling techniques, character design, and animation principles. 

Career Paths: Illustrator, Animator, Concept Artist, Multimedia Artist, Storyboard Artist.
"""
    case "🎓 Computer Science":
        return """
Computer Science involves the study of algorithms, programming languages, and the theoretical foundations of computing. Students learn to design and develop software systems. 

Career Paths: Software Developer, Systems Analyst, Computer Scientist, Database Administrator, IT Consultant.
"""
    case "🎓 Software Engineering":
        return """
Software Engineering focuses on the systematic design and development of software applications. It involves principles of project management, quality assurance, and coding practices. 

Career Paths: Software Engineer, Application Developer, Software Architect, DevOps Engineer, Technical Lead.
"""
    case "🎓 Data Science":
        return """
Data Science combines statistics, mathematics, and computer science to analyze and interpret complex data sets. Students learn data mining, machine learning, and statistical modeling. 

Career Paths: Data Scientist, Data Analyst, Machine Learning Engineer, Business Intelligence Analyst, Data Engineer.
"""
    case "🎓 Information Technology":
        return """
Information Technology (IT) encompasses the management and use of technology to solve business problems. Students learn about network administration, system analysis, and IT project management. 

Career Paths: IT Specialist, Network Administrator, Systems Analyst, IT Manager, Technical Support Specialist.
"""
    case "🎓 Cybersecurity":
        return """
Cybersecurity focuses on protecting computer systems, networks, and data from cyber threats. Students learn about cryptography, network security, and ethical hacking. 

Career Paths: Cybersecurity Analyst, Information Security Specialist, Ethical Hacker, Security Consultant, Chief Information Security Officer (CISO).
"""
    case "🎓 Communication Studies":
        return """
Communication Studies explores the theories and practices of human communication. Students study interpersonal communication, rhetoric, and media literacy to understand effective communication strategies. 

Career Paths: Communication Specialist, Public Relations Coordinator, Corporate Communications Manager, Media Consultant, Speechwriter.
"""
    case "🎓 Media and Journalism":
        return """
Media and Journalism majors learn about news reporting, storytelling, and media production. They develop skills in writing, editing, and multimedia journalism. 

Career Paths: Journalist, News Reporter, Editor, Broadcast Journalist, Digital Content Producer.
"""
    case "🎓 Public Relations":
        return """
Public Relations focuses on managing communication between organizations and their audiences. Students learn strategic communication, crisis management, and media relations. 

Career Paths: Public Relations Specialist, PR Manager, Communications Director, Event Planner, Social Media Manager.
"""
    case "🎓 International Relations":
        return """
International Relations examines relationships between countries, global issues, and diplomacy. It involves political, economic, and social analyses on an international scale. 

Career Paths: Diplomat, International Development Specialist, Foreign Service Officer, Policy Analyst, Global Affairs Consultant.
"""
    case "🎓 Digital Media":
        return """
Digital Media covers the creation and distribution of content in digital formats. Students explore digital storytelling, multimedia production, and the use of emerging technologies. 

Career Paths: Digital Media Producer, Content Strategist, Social Media Manager, Digital Marketing Specialist, Multimedia Designer.
"""
    case "🎓 Environmental Science":
        return """
Environmental Science involves the study of the environment, ecosystems, and human impact on nature. It addresses issues related to sustainability, conservation, and the health of the planet. 

Career Paths: Environmental Scientist, Conservation Scientist, Environmental Consultant, Ecologist, Environmental Educator.
"""
    case "🎓 Conservation Biology":
        return """
Conservation Biology focuses on the preservation of biodiversity and ecosystems. Students study the impact of human activities on wildlife and natural habitats. 

Career Paths: Conservation Biologist, Wildlife Biologist, Park Ranger, Environmental Planner, Restoration Ecologist.
"""
    case "🎓 Sustainability Studies":
        return """
Sustainability Studies explore the balance between social, economic, and environmental aspects. Students learn about sustainable practices, resource management, and ethical considerations. 

Career Paths: Sustainability Coordinator, Corporate Sustainability Manager, Environmental Analyst, Green Building Consultant, Sustainable Development Specialist.
"""
    case "🎓 Environmental Policy":
        return """
Environmental Policy majors study the development and implementation of policies related to environmental issues. This includes analyzing legislation and advocating for sustainable practices. 

Career Paths: Environmental Policy Analyst, Environmental Planner, Policy Advocate, Environmental Lobbyist, Government Environmental Advisor.
"""
    case "🎓 Renewable Energy":
        return """
Renewable Energy focuses on sustainable energy sources such as solar, wind, and hydro power. Students learn about energy production, environmental impact, and clean technology. 

Career Paths: Renewable Energy Engineer, Solar Energy Consultant, Wind Energy Analyst, Sustainable Energy Researcher, Energy Policy Advisor.
"""
    case "🎓 Natural Sciences":
        return """
Natural Sciences is a broad major that encompasses the study of the physical and natural world. It includes disciplines such as physics, chemistry, and biology, fostering a holistic understanding of science. 

Career Paths: Research Scientist, Science Educator, Lab Technician, Environmental Scientist, Data Analyst.
"""
    case "🎓 Biotechnology":
        return """
Biotechnology involves the use of biological systems and processes to develop new technologies and applications. Students study genetic engineering, molecular biology, and bioinformatics. 

Career Paths: Biotechnologist, Biomedical Researcher, Genetic Engineer, Pharmaceutical Scientist, Bioinformatics Analyst.
"""
    case "🎓 Biomedical Engineering":
        return """
Biomedical Engineering combines principles of engineering and biological sciences to develop technologies and solutions for healthcare. It focuses on improving medical devices and procedures. 

Career Paths: Biomedical Engineer, Medical Device Developer, Clinical Engineer, Biotechnology Researcher, Healthcare Technology Consultant.
"""
    case "🎓 Astronomy":
        return """
Astronomy is the study of celestial bodies, including stars, planets, and galaxies. Students explore the universe's structure, evolution, and the principles of astrophysics. 

Career Paths: Astronomer, Astrophysicist, Planetarium Educator, Space Researcher, Science Writer.
"""
    case "🎓 Neuroscience":
        return """
Neuroscience is the study of the nervous system, including the brain and spinal cord. Students explore the physiological and psychological aspects of the brain's functions. 

Career Paths: Neuroscientist, Neuropsychologist, Clinical Researcher, Neuropharmacologist, Cognitive Neuroscientist.
"""
    case "🎓 Medical":
        return """
Medical majors involve the study of medicine, anatomy, and healthcare practices. Students learn about disease prevention, diagnostics, and treatment methods. 

Career Paths: Doctor, Surgeon, Medical Researcher, General Practitioner, Medical Specialist.
"""
    case "🎓 Nutrition and Dietetics":
        return """
Nutrition and Dietetics majors focus on the study of nutrition, diet planning, and the impact of food on health. Students learn about dietary counseling and the prevention of nutrition-related diseases. 

Career Paths: Dietitian, Nutritionist, Clinical Nutrition Specialist, Public Health Nutritionist, Sports Nutritionist.
"""
    case "🎓 Public Health":
        return """
Public Health majors address the health of populations and communities. Students study epidemiology, health policy, and health promotion strategies. 

Career Paths: Public Health Analyst, Health Educator, Epidemiologist, Health Policy Advisor, Community Health Worker.
"""
    case "🎓 Nursing":
        return """
Nursing majors prepare students for careers in patient care and healthcare management. Students learn about medical procedures, patient assessment, and healthcare ethics. 

Career Paths: Registered Nurse, Nurse Practitioner, Nurse Educator, Nurse Manager, Healthcare Administrator.
"""
    case "🎓 Biomedical Sciences":
        return """
Biomedical Sciences involve the study of the biological processes underlying human health and disease. Students explore areas such as genetics, physiology, and medical research. 

Career Paths: Biomedical Scientist, Medical Researcher, Laboratory Technician, Clinical Research Coordinator, Pharmaceutical Researcher.
""" 
    default:
        return ""
    }
}
