// Tie name hover to question mark icon
document.addEventListener("DOMContentLoaded", function(){
  // Connect name and question hover states
  let question = document.getElementById("question");
  $(question).hover(hoverNameOn, hoverNameOff);
});

// Hover color — name only
function hoverNameOn(){
  let name = document.getElementById("name");
  name.classList.add("stroke-hover-state");
}
function hoverNameOff(){
  let name = document.getElementById("name");
  name.classList.remove("stroke-hover-state");
}

// Hover color — all others
function hoverOn(id){
  let el = document.getElementById(id);
  el.classList.add("stroke-hover-state");
}
function hoverOff(id){
  let el = document.getElementById(id);
  el.classList.remove("stroke-hover-state");
}

// Text replace functions
function changeText(id){
  if (id){
    let text = [websites, teams, depts, enth, question];
    let links = ['websites', 'teams', 'depts', 'enth', 'question'];
    let colors = ['#FFDC27', '#F4A49A', '#ADDDFF', '#FFC268', '#BED68C'];
    let mainText = document.getElementById('main-text');
    // Iterate through links, run hoverOff taking each as an argument
    for (let i = 0; i < links.length; i++) {
      hoverOff(links[i]);
    }
    // hoverOn for the clicked element id
    hoverOn(id);
    // Check which link matches id
    for (let i = 0; i < links.length; i++) {
      if (links[i] === id) {
        // Text fades out
        $(mainText).fadeOut("slow");
        // Replace text
        setTimeout(function(){mainText.innerHTML=text[i]}, 480);
        // Text fades in
        $(mainText).fadeIn("slow");
        // Sidebar color changes
        setTimeout(function() {$('#icon-container').css({"background-color": colors[i]})}, 400);
      }
    }
  }
}

// Reset to site start
function clearAll() {
  let mainText = document.getElementById('main-text');
  let links = ['websites', 'teams', 'depts', 'enth', 'question'];
  for (let i = 0; i < links.length; i++) {
    hoverOff(links[i]);
  }
  // Text fades out
  $(mainText).fadeOut("fast");
  // Replace text
  setTimeout(function(){mainText.innerHTML=base}, 310);
  // Text fades in
  $(mainText).fadeIn("slow");
  // Sidebar color changes
  setTimeout(function() {$('#icon-container').css({"background-color": "#FCF5EF"})}, 400);
}

/////////////////////////END FUNCTIONS/////////////////////////

// Text bank
var websites = 'I’ve been a professional web developer, designer, and site maintainer since 2016. I specialize in WordPress environments. I’m fluent in HTML, CSS/SASS, and JavaScript, and proficient in PHP, Python, and Git. I love information architecture (ask me about how Erika Hall changed my life) and I’m comfortable with user research and UX/UI design. I specialize in accessibility, both on and off the Web, and I’ve made countless websites and software suites WCAG accessible. I’m even better at teaching code than I am at writing it: I’ve worked as a coding instructor for TechnoloCHICAS and Coded by Kids, and now do informal coaching as part of my position as Web Director at Hopeworks Camden.';
var teams = 'Building and supporting a happy team is the best part of my work. I treat my team members with respect, celebrate their wins, and value and prioritize their concerns. I am known for actively seeking input and feedback from the people I supervise. My team members feel heard, and that helps them create great products.<br><br>Diversity is fundamental to this work. I believe that technology serves the people who create it, and I want team members who look, think and work differently than I do. I’ve worked with and managed team members across ages and skill levels. I’m an advocate for disability rights, abolition, and anti-racism. I’m queer and nonbinary. I also work with a trauma-informed toolkit, and have formal training in mental health crisis intervention.';
var depts = 'When I started as the Web Development Director at Hopeworks, I supervised a single part-time intern. Three years later, I have a team of up to fifteen part- and full-time employees, working both in-office and remotely. My minimum project cost has doubled, and my average project size has grown from $5,000 to over $12,000. I’ve facilitated robust accessibility training, established formal UX and QA systems, and expanded my own role from one-on-one coaching to high-level project and team management following a hybrid Agile SCRUM model. I’ve also reworked our financial tracking, so that we have clear, defensible scopes that we know will cover our margins. I love breaking systems and building them back better.';
var enth = 'I’m a “hey check this out,” get-excited-with-you leader. My passions include accessibility, rock climbing, mutual aid, fashion design, backpacking, text-based games, vegetarian cooking, anime, cell biology, contemporary poetry,  hackathons, anti-imperialist abolition work, watercolor painting, music production, land stewardship and cognitive science. In other words, I can find something to talk about with pretty much anyone.<br><br>I specialize in creating environments where everyone has the space, tools, and team culture they need to thrive. You hand me a team, and I’ll forge the connections.';
var question = 'I recently launched the Disaster Relief Toolkit, a project to help mutual aid organizers address on-the-ground needs when disasters impact their communities. I’m a NELI Ascending Leadership fellow for the 2021-22 cohort.<br><br>I use he, she, and they pronouns. I live in East Falls with my partner, her cat Fig, and my dog Saint.<br><br>For a summary of the information on this site, <a href="assets/arw-resume.pdf" target="_blank">download my resume</a>.<br>For a good time, <a href="/game">try playing this website as a text-based game</a>.<br>For questions, or just to say hi, <a href="mailto:hi@annierwebb.com" target="_blank">send me an email</a>.';
var base = 'You’ve landed on the website of Annie Rose Webb, a jack-of-all-trades techie and nature enthusiast who’s worked in the Philadelphia and Camden tech scenes for the past several years. Nice to meet you.<br><br>Click my specialties for a deep dive, or use the icons for more information.';
