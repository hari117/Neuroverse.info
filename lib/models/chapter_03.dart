import 'package:neuroverse/helpers/imports_and_exports.dart';

class ListOfChapters {
  List<Chapter> list_of_chapter = [
    Chapter(
      id,
      blog_title,
      blog_image_03,
      c1_images,
      c1_content,
    ),
    Chapter(
      c4_id,
      c4_blog_title,
      c4_blog_image,
      c4_images,
      c4_content,
    ),
    Chapter(
      c5_id,
      c5_blog_title,
      c5_blog_image,
      c5_images,
      c5_content,
    ),
    Chapter(
      c6_id,
      c6_blog_title,
      c6_blog_image,
      c6_images,
      c6_content,
    ),
    Chapter(
      c7_id,
      c7_blog_title,
      c7_blog_image,
      c7_images,
      c7_content,
    ),
    Chapter(
      c8_id,
      c8_blog_title,
      c8_blog_image,
      c8_images,
      c8_content,
    ),
    Chapter(
      c9_id,
      c9_blog_title,
      c9_blog_image,
      c9_images,
      c9_content,
    ),
    Chapter(
      c10_id,
      c10_blog_title,
      c10_blog_image,
      c10_images,
      c10_content,
    ),
  ];

  getList() => list_of_chapter;
}

class Chapter {
  String id;
  String title;
  String title_image;
  List<String> chapter_images;
  List<String> contents;

  Chapter(
    this.id,
    this.title,
    this.title_image,
    this.chapter_images,
    this.contents,
  );
}

String id = "c3_blog";
String blog_title = "WHAT IS NEURODIVERSITY";
String blog_image_03 = ImagesAndIcons.chapter_03_01;
String c1_01 =
    "Neurodiversity refers to the variations in the human brain regarding sociability,learning, attention, mood and other functions. It encompasses the differences in the way we think, speak, feel and more! Though it may sound complex, it is simply a term to explain that no two minds are exactly the same. Although the novelty of the term may make it sound distant from our everyday lives, there is actually little difference between a neurodivergent individual and a neurotypical individual. In fact, since each and every human has a unique brain, all humans are neurodiverse. And that is one of our greatest strengths as a species!";
String c1_02 =
    "Understanding the nuances of neurodiversity helps us to understand both ourselves and others more profoundly, empowering us to forge more meaningful connections with the world. Through this workbook, we will learn some of the most common ways that our minds can differ, while developing some of the tools we need to support each other along the way!";
List<String> c1_content = [c1_01, c1_02];
List<String> c1_images = [];




String c4_id = "c4_blog";
String c4_blog_title = "TREATING PEOPLE WITH RESPECT AND DIGNITY";
String c4_blog_image = ImagesAndIcons.chapter_04_01;
String c4_01 =
    "Unwavering respect for everyone is not only the foundation for a supportive community but the primary force that closes any gap between neurotypical individuals and neurodiverse individuals. As stated on page 3,there is little difference between neurotypical individuals and neurodiverse individuals, and no matter a cognitive difference everyone should be treated with respect and dignity.";
String c4_02 =
    "If everyone got educated on the value of neurodiversity and made little changes in their attitudes and mindsets, the world would be a better place for all. These little changes mainly stem from and include resolute respect.";
List<String> c4_content = [c4_01, c4_02];
List<String> c4_images = [];





String c5_id = "c5_blog";
String c5_blog_title = "AUTISM";
String c5_blog_image = ImagesAndIcons.chapter_05_01;
String c5_01 = "You’ve probably heard a bit about the autistic spectrum before, or maybe you even have a classmate or sibling with this neurodiverse trait! Regardless of your familiarity with it, learning a bit more about the experiences of our friends and family on the spectrum will allow us to better support their vitality and pursuits, both academic and personal. To start, autism is a bio-neurological developmental disability, which is just a fancy way of saying that it reveals itself before adulthood. In fact, it typically emerges in children before the age of 3, with diagnoses most frequently occurring in early childhood. 1 in 59 children, just under 2% has been diagnosed with autism spectrum disorder (ASD), meaning that it’s a type of neurodiversity that isn’t too common, but meaningful nonetheless 1 . Though uncommon across all genders, boys are 3 times more likely to possess ASD than girls, at 1 in 37 and 1 in 151, respectively.";

    String c5_02 = "Many don’t know the side effects of ASD can also extend to immunity, digestion and sleep, however! Additional challenges can include allergies, asthma, epilepsy, digestive disorders, persistent viral infections, feeding disorders, sensory integration dysfunction, sleeping disorders, and more. The good news, however, is with early intervention and treatment strategies, we can make it easier for our autistic friends and family members to participate in the activities they love the most and enjoy their best physical and mental health! Studies show that effective early intervention can cause significant improvement in multiple areas for 87% of children with autism, including social, communication, academic, and behavior 3 . Remember, no brain is better or worse than another. We’re all simply different, and that neurodiversity is what makes us strong.";
List<String> c5_content = [c5_01, c5_02];
List<String> c5_images = [ImagesAndIcons.chapter_05_02];




String c6_id = "c6_blog";
String c6_blog_title = "TOURETTE SYNDROME";
String c6_blog_image = ImagesAndIcons.chapter_06_01;
String c6_01 = "Many unfairly associate Tourette Syndrome (TS) or a tic disorder (TD) with cursing, unusual behavior, or disturbance, but this neurodiversity has such greater complexity than these misconceptions.‘Tic’s, or habitual series of repeated, uncontrollable actions, are one of the major aspects that distinguishes an individual with TS. The syndrome’s impact on a person’s central nervous system ultimately causes these tics, although many aren’t as visible or disruptive as they may seem in the media. ";
String c6_02 = "There are two kinds of tics — motor tics and vocal tics. Motor tics are twitches or movements a person makes and vocal tics are sounds a person makes, and they are both involuntary. This involuntary quality makes it all the more meaningful that we extend understanding towards our friends and family members with Tourette’s. Whether hypervisible or subtle, tics are a function of their brain that they cannot control, so it’s key for neurotypical individuals to approach their differences with patience and empathy.";
String c6_03="To diagnose Tourette Syndrome, a person must have at least two motor tics and one vocal tic and they must have to have the tics every day or off-and-on for over a year. Motor tics are movements of the muscles which include eye blinking, head shaking, jerking of the arms, and shrugging. Vocal tics are sounds that a person involuntarily makes with their voice. Vocal tics include throat clearing, grunting, and coughing.";
String c6_04="Someone with Tourette syndrome may have more than one type of tic happening at once. Tics can happen throughout the day, but they often happen less or go away completely when a person is heavily concentrating on something or relaxing. The frequency of tics is also subjective, and they are usually worse when a person is under stress or very excited about something. Understanding some of the causes, effects and circumstances of these tics allows us to provide the best support we can to the people in our lives who may have Tourette’s. One of the greatest feelings is to be understood and accepted, so we can create a better world together by extending this respect towards our friends in the Tourette community.";
List<String> c6_content = [c6_01, c6_02,c6_03,c6_04];
List<String> c6_images = [ImagesAndIcons.chapter_06_02];







String c7_id = "c7_blog";
String c7_blog_title = "DYSLEXIA,DYSCALCULIA AND DYSGRAPHIA";
String c7_blog_image = ImagesAndIcons.chapter_07_01;
String c7_01 ="Have you heard of dyslexia? If so, the word probably came up once or twice in the classroom while you explored reading and classroom while you explored reading and may not know, however, is that dyscalculia and dysgraphia are dyslexia-related learning challenges that can also impact a friend or family member’s performance in the classroom.";
String c7_02 ="Dyslexia, dyscalculia and dysgraphia are neurologically-based processing challenges, which is just a fancy way of saying that they can affect how we interpret words, symbols and numbers on a page or a screen. These processing problems can interfere with reading, writing and math comprehension, which means our dyslexic friends can especially use our support, understanding and accommodations in those types of classes. It may take a dyslexic friend a bit longer to read or write, for example, or make a difficult math problem feel even more impossible.";
String c7_03="Although many people believe that dyslexia is simply characterized by vision, most individuals struggle with phonological dyslexia. Phonological dyslexia is characterized by the inability to sound out words and although it is the most common form of dyslexia it is the least talked about. Three symptoms of phonological dyslexia are difficulty learning sounds, sounding out words and recognizing familiar words in new contexts. Learning more about phonological dyslexia will not only expand knowledge but also help out individuals who experience phonological dyslexia immensely!";
String c7_04="Learning disabilities like dyslexia are usually diagnosed during the school years when difficulties with reading, writing and math become apparent and recognizable. A key consideration is that learning disabilities and learning problems differ and should not be mistaken for the other. While a learning problem generally limits itself to the classroom and can be overcome through more dedicated study and practice, a learning disability often affects multiple areas of life and frequently requires more substantial, structural outside support to manage the demands of classroom learning.";
String c7_05="Often learning disabilities are referred to as “hidden disabilities” because the person looks perfectly “normal” and seems to be not struggling. Beneath the surface, however, they may be unable to demonstrate the skill level expected from someone of the same age, which can take a huge toll on a friend’s confidence.";
    String c7_06="Ignoring the needs of dyslexic individuals can yield distressing consequences. For individuals with dyslexia, dyscalculia and dysgraphia, their difficulties with employment often begin in the education system. The school drop-out rate for those with dyslexia is 35%, twice the national average drop-out rate, and barely 2% of people with dyslexia enrolled in college complete all 4 years of undergrad. There often appears to be a gap between the individual’s potential and actual achievement, so it’s upon us to create an inclusive system that closes that achievement gap. It is important to realize that learning disabilities can affect an individual’s life beyond academics and can impact relationships with family, friends and in the workplace.";
String c7_07="Remember: a disability has no relation to intelligence or IQ. For this reason, an individual with dyslexia can thrive and prosper in school with the adequate learning infrastructure. Providing this support will unlock the bright, often-overlooked potential of non-neurotypical minds and help us all create a more  inclusive and vibrant world. A learning disability is a lifelong challenge but with adequate support, individuals with learning disabilities can achieve fulfilment in all aspects of one’s life.";

List<String> c7_content = [c7_01, c7_02,c7_03,c7_04,c7_05,c7_06,c7_07];
List<String> c7_images = [ImagesAndIcons.chapter_07_02];










String c8_id = "c8_blog";
String c8_blog_title = "ADHD/ADD";
String c8_blog_image = ImagesAndIcons.chapter_08_01;
String c8_01 ="We’ve all heard the comments before. Though often intended without harm,these types of jokes can decrease the self esteem of and produce feelings of isolation for an individual with a life-changing diagnosis of ADD or ADHD. ADD and ADHD are much more than a bit of extra energy, so it’s important that we study and respect the experiences of our friends and family members who may navigate life with this neurodiversity.";
String c8_02 ="ADHD is a disorder involving a group of ADHD is a disorder involving a group of Executive function directs a person’s ability to focus, organize, use, and other executive skills. Impacting this executive function area, ADHD is caused by slight differences in brain anatomy development. As a genetic trait, it also often runs in families.";
String c8_03="Many may experience some symptoms of ADHD at one time or another, such as irritability, fidgeting, or difficulty focusing.To t be diagnosed with ADHD, however, kids must have far more pronounced and consistent difficulty with these problems than their peers.";
String c8_04="Individuals diagnosed with ADHD also tend to have challenges in more than one area—for example, at school, at home and in friendships. The excitability,impulsivity and forgetfulness that often accompanies an ADD or ADHD diagnosis can complicate life in the classroom as well as at home or on the field. Some of the skills kids with ADHD often struggle with include maintaining a working memory, engaging in flexible thinking, managing emotions and general self-regulation. Many of these struggles are surmountable,however, with a little extra support from institutions and individuals alike.";
String c8_05="For a long time, people thought ADHD was something only kids—boys, in particular—had. But research has shown that ADHD symptoms can persist into adulthood in some people, and that women and girls have it as often as men and boys. Estimates of how many children in the U.S. have ADHD range from 5 percent to 11 percent, making a bit more common of a neurodiversity type. Regardless of its commonality,however, it’s key that we approach friends and family members with ADD and ADHD with the patience, care and respect they need to thrive in school, work, home and beyond.";

List<String> c8_content = [c8_01, c8_02,c8_03,c8_04,c8_05];
List<String> c8_images = [ImagesAndIcons.chapter_08_02];



String c9_id = "c9_blog";
String c9_blog_title = "BIPOLAR DISORDER";
String c9_blog_image = ImagesAndIcons.chapter_09_01;
String c9_01 ="You may have heard the term “bipolar” used to describe unpredictable weather, or a moody friend or partner, but Bipolar Disorder (BD) is a complex form of neurodiversity that shouldn’t warrant such a negative connotation. It typically just means that your friend or family member experiences joy and sadness with more intensity than you would, and sometimes with more frequency. It doesn’t mean that a person is “two-faced,” “indecisive,” or “fake.” Since it primarily impacts a person’s internal mood and feeling, it has no effect on their personality, loyalty or value systems.";
String c9_02 ="Bipolar disorder, once called manic-depressive illness or manic depression,has symptoms that are not the same as the normal “ups and downs” every child or person experiences. We all go through good times and bad, experiencing the predictable changes in emotion that accompany both. In bipolar disorder, however, the mood chances are often unpredictable, more extreme, and are accompanied by pronounced changes in energy level and the ability to think clearly.";
String c9_03="Bipolar disorder affects the mood, causing people to experience sometimes extreme changes in mood and behavior. These feelings of being very energetic and excited are called manic episodes while the opposite of feeling sad and not active are called depressive episodes. Most people are diagnosed with bipolar disorder in adolescence or adulthood,but the symptoms can appear earlier in childhood.Additionally, bipolar disorder is often episodic,meaning it can occur for a week or two before the person experiences a normal mood pattern, but it usually lasts a lifetime.";
String c9_04="So how can Bipolar Disorder affect the day-to-day life of a family or friend? Bipolar symptoms can make it hard for young people to perform well in school or to get along with friends and family members. Such frequent and intense fluctuations in mood and energy can prove distracting and exhausting for a kid or teen, decreasing their performance on assessments and extracurriculars. Some children and teens with bipolar disorder, unaware of how to reach out for help and understand their disorder, unfortunately, may suffer from decreased mental health.";
String c9_05="Since the signs and symptoms of bipolar disorder may overlap with symptoms of other disorders, diagnosing bipolar disorder is complicated and requires a careful and thorough evaluation by a trained, experienced mental health professional. With personalized treatment, children and teens with bipolar disorder can manage their symptoms and lead successful lives.";

List<String> c9_content = [c9_01, c9_02,c9_03,c9_04,c9_05];
List<String> c9_images = [ImagesAndIcons.chapter_09_02];






String c10_id = "c10_blog";
String c10_blog_title = "NEURODIVERSITY MAKES THE WORLD A BETTER PLACE!";
String c10_blog_image = ImagesAndIcons.chapter_010_01;
String c10_01 ="A study conducted by Drexel University discovered that 58% of young adults with autism are unemployed. Less than 16% of survey participants had full-time paid work and this number has hardly changed since 2007. This disparity in achievement is the opposite of what we should strive for in creating a more equitable world. Such high percentages of neurodivergent people being unemployed and yet still at a disadvantage suggest that the world is not making progress at the rate optimized for those who need it most.";
String c10_02 ="These outcomes can cause a sense of social and financial isolation, as they increase dependency on parents and government-based organizations for neurodivergent individuals even into adulthood. Instead of turning them away constantly, employers should turn challenges neurodiverse people face into opportunities. This inclusivity would serve as a huge step into closing the gap between neurodiverse individuals and neurotypical individuals.";

List<String> c10_content = [c10_01, c10_02,];
List<String> c10_images = [];






// singleblog content

String title_01="Communication";
String t1_content_01="• Communicate clearly to both learn and understand as much as you can and determine the ways that you can most adequately support your friend.";
String t1_content_02="• Be intentional about the words you use, such as “normal” when referring to the behavior and needs of yourself and others.";
String t1_content_03="• Refrain from using the names of neurodivergent conditions as derogatory insults";

String title_02="Acceptance";
String t2_content_01="• Understand the nuances and realize the struggles and the positive attributes!";


String title_03="Patience";
String t3_content_01="• Be patient with your friend and considerate if some activities are more challenging!";

String title_04="Support";
String t4_content_01="• Get active within the organizations that support efforts to improve access for neurodivergent communities.";

String para1="Support your friend always through the things that they are struggling with -- Your support will help your friend grow by challenging themselves more knowing that there is someone supporting them!";
String para2="Closing this gap would create a more unified world which would ultimately result in the world being more accepting and overall a better place. When we honor the unique value of every person and the unique structure of every mind, we maximize our potential as a society, in terms of intellectual advancements , artistic progress, and athletic achievement alike. If every person recognized and learned how to navigate neurodiversity, this better world can emerge into fruition. By starting to learn more and make little changes while younger, the principle will solidify within us as a natural part of the respect we give to ourselves and others, both neurodiverse individuals and neurotypical individuals.";

















// Quiz questions


String q1="Typically at what age does autism emerge in children?";
String q2="True or False. Is ADHD a genetic trait? (does is run in families)";
String q3="Which of the following is a motor tic?";
String q4="What is the school drop out rate for individuals with dyslexia?";
String q5="True or False. 12% of people with dyslexia enrolled in college complete all 4 years of undergrad.";
String q6="Bipolar disorder affects the mood of individuals and causes extreme changes in mood and behavior. These two extremes are called ________episodes and ______ episodes.";
String q7="Are boys 3 times more likely to possess autism spectrum disorder (ASD) than girls?";
String q8="The two types of tics are ____ ____ ____ ____ tics and____ ____ ____ ____ tics";


Map<String,dynamic> ans={

  "q1":"3 years old",
  "q2":"True",
  "q3":"Head jerking",
  "q4":"35%",
  "q5":"False",
  "q6":"Manic,Depressive",
  "q7":"True",
  "q8":"Motal,Vocal",


};















