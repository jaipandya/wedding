$(function() {
    $('.j-tooltip').tooltip();
    var gem_install_message_pre = "\
Fetching: addressable-2.3.5.gem (100%)\
\nFetching: launchy-2.3.0.gem (100%)\
\nFetching: require_all-1.3.2.gem (100%)\
\nFetching: thor-0.18.1.gem (100%)\
\nFetching: artii-2.0.3.gem (100%)\
\nFetching: rainbow-1.1.4.gem (100%)\
\nFetching: wedding-0.0.1.gem (100%)\
\n ";
    var gem_install_message_post = "\
\n[[b;#d33682;]==== Release notes for wedding gem ====]\
\n\
\nNow that you have installed this gem, you earn our immense respect.\
\nYou are the star guest of our wedding, you will receive our special\
\nattention.\
\n    Go ahead and type [[b;#859900;]wedding] on the command\
\nprompt to see the list of commands available with it. Print your\
\npersonal invitation, and fire your browser to see the location of\
\nthe event. We love you!\
\n\
\n[[b;#b58900;]Prerita and Jai]\
\n\
\n[[b;#d33682;]=======================================]\
\n\
\nSuccessfully installed addressable-2.3.5\
\nSuccessfully installed launchy-2.3.0\
\nSuccessfully installed require_all-1.3.2\
\nSuccessfully installed thor-0.18.1\
\nSuccessfully installed artii-2.0.3\
\nSuccessfully installed rainbow-1.1.4\
\nSuccessfully installed wedding-0.0.1\
\n7 gems installed\
\n    ";
    var prompt = "[[b;#d33682;]root]@[[b;#6c71c4;]wedding] ~$ ";
    var wedding_url = "http://goo.gl/4tqfMs";
    var venue_address = "\
Gandhi Nagar Club Gardens\
\n(Near Gandhi Nagar Girls' School),\
\nGandhi Nagar, Jaipur\
\nPin - 302015\
    "
    var ganesha = "\
\n                 _.!._             \
\n                /O*@*O\\           \
\n              <\\@(_)@/>           \
\n      ,;,   .--;`     `;--.   ,    \
\n      O@O_ /   |d     b|   \\ _hnn \
\n      | `/ \\   |       |   / \\` |\
\n      &&&&  :##;\\     /;##;  &&&& \
\n      |  \\ / `##/|   |##'  \\ /  |\
\n      \\   %%`</|   |#'`%%   / \
\n       '._|_ \\   |   |'  / _|_.'  \
\n         _/  /   \\   \\   \\  \\  \
\n        / (\\(     '.  '-._&&&&    \
\n       (  ()##,    o'--.._`\\-)    \
\n        '-():`##########'()()()    \
\n         /:::::/()`Y`()\\:::::\\   \
\n         \\::::( () | () )::::/    \
\n          `\"\"\"`\\().'.()/'\"\"\"`     \
\n          \
  ";
  var invitation_pre = "\
\n[[b;#d33682;]========= Wedding invitation ==========]\
  ";
  var jai_weds_prerita = "\
\n       __      _    \
\n      / /___ _(_)   \
\n __  / / __ `/ /    \
\n/ /_/ / /_/ / /     \
\n\____/\\__,_/_/      \
\n\
\n    weds                             \
\n    ____                 _ __        \
\n   / __ \\________  _____(_) /_____ _ \
\n  / /_/ / ___/ _ \\/ ___/ / __/ __ `/ \
\n / ____/ /  /  __/ /  / / /_/ /_/ /  \
\n/_/   /_/   \\___/_/  /_/\\__/\\__,_/   \
\n                                     \
  ";
  var invitation_post = "\
\nHi,\
\n\
\nWe are getting married on 29 November 13. It will \
\nbe a great pleasure for us to have your presence  \
\nin the wedding ceremony.                          \
\n                                                  \
\nEvent schedule:                                   \
\n\
\n 7:00 pm Barat starts from Home                   \
\n 8:00 pm Barat reaches venue                      \
\n12:00 pm Phere                                    \
\n\
\nPack your bags! Only [[b;#cb4b16;]" + (29 - (new Date()).getDate()) + "] days left.                 \
\n\
  ";
    var wedding_help = "\
Commands: \
\n\t[[b;#268bd2;]wedding invitation]      [[b;#2aa198;]# Your invitation card is inside this envelope] \
\n\t[[b;#268bd2;]wedding bride]           [[b;#2aa198;]# Glory words about the bride] \
\n\t[[b;#268bd2;]wedding groom]           [[b;#2aa198;]# Glory words about the groom] \
\n\t[[b;#268bd2;]wedding location]        [[b;#2aa198;]# Google maps link to the wedding venue] \
\n\t[[b;#268bd2;]wedding rsvp]            [[b;#2aa198;]# RSVP for the event]\
  ";
    var bride = "\
\n[[b;#d33682;]========= Bride ==========]\
\n\
\nThe bride's name is Prerita\
\nShe is a Banker, Traveller, Dancer, Painter, Dreamer\
\nShe works as Asst. Manager at Bank of Baroda\
\nIf you want to contact her, her email ID\
\nis preritayadav@gmail.com\
\n\
  ";
    var groom = "\
\n[[b;#d33682;]========= Groom ==========]\
\n\
\nThe groom's name is Jai\
\nHe is a Programmer, Traveller, Photographer, Biker, SlideShare Engineer\
\nHe works as a Hacker at SlideShare\
\nIf you want to contact him, his email ID\
\nis jaipandya@gmail.com\
\n\
  ";
    var rsvp = "\
\nYou can RSVP to the event by sending an email to\
\nJai (jaipandya@gmail.com)\
\nor Prerita (preritayadav@gmail.com)\
\n        \
  ";
    var greetings = jai_weds_prerita + "\
\n\nWelcome to Prerita and Jai's wedding website. In order to retrieve your \
\ninvitation, first install wedding gem using [[b;#859900;]gem install wedding] command.\
\nOnce the gem is installed, type [[b;#859900;]wedding] in the terminal to see the list of\
\navailable commands. \
\n \
\nThe gem is available for download at https://rubygems.org/gems/wedding \
\n  ";

    var gem_list_empty = '\n*** LOCAL GEMS ***\n';
    var gem_list_full = '\n*** LOCAL GEMS ***\n\naddressable (2.3.5)\nlaunchy (2.3.0)\nrequire_all (1.3.2)\nthor (0.18.1)\nartii (2.0.3)\nrainbow (1.1.4)\nwedding (0.0.1)\n';


    var print_gem = 'RubyGems is a sophisticated package manager for Ruby.  This is a\nbasic help message containing pointers to more information.\n\n  Usage:\n    gem -v\n    gem command [arguments...] [options...]\n\n  Examples:\n    gem install rake\n    gem list --local\n    gem build package.gemspec\n    gem help install\n\n  Further help:\n    gem help commands            list all \'gem\' commands\n    gem help examples            show some examples of usage\n    gem help platforms           show information about platforms\n    gem help <COMMAND>           show help on COMMAND\n                                   (e.g. \'gem help install\')\n    gem server                   present a web page at\n                                 http://localhost:8808/\n                                 with info about installed gems\n  Further information:\n    http://rubygems.rubyforge.org';

    function print_slowly(term, paragraph, callback) {
      var foo, i, lines;
      lines = paragraph.split("\n");
      term.pause();
      i = 0;
      foo = function(lines) {
        return setTimeout((function() {
          if (i < lines.length -1) {
            term.echo(lines[i]);
            i++;
            return foo(lines);
          } else {
            term.resume();
            return callback();
          }
        }), 1000);
      };
      return foo(lines);
    };
    function require_command(command_regex, terminal_history) {
      var executed = false;
      $.each(terminal_history, function(index, value){
        if (command_regex.test(value)) {
          executed = true
        }
      });
      return executed;
        
    }
    var gem_install_regex = /gem +install +wedding */ig;

    // Handle gem command
    function gem(inputs, term){
      // No second argument
      if (!inputs[1]) {
        term.echo(print_gem);
      } else if (inputs[1] === 'install' && inputs[2] === 'wedding') {
        print_slowly(term, gem_install_message_pre, function(){
          term.echo(gem_install_message_post)
        });
      } else if (inputs[1] === '-v') {
        term.echo('1.3.6');
      } else if (inputs[1] == 'list') {
        // if history has install wedding
        term.echo(gem_list_full);
        // else
        // term.echo(gem_list_empty)
      } else {
        term.echo(inputs.join(" ") + " is not a valid command")
      }
    }

    // Handle wedding command
    function wedding(inputs, term){
      if (!inputs[1]) {
        term.echo(wedding_help);
      } else if (inputs[1] === "bride") {
        term.echo(bride);
      } else if (inputs[1] === "groom") {
        term.echo(groom)
      } else if (inputs[1] === "invitation") {
        term.echo("[[;#b58900;]"+ganesha+ "]");
        term.echo(invitation_pre);
        term.pause();
        setTimeout(function(){
          term.resume();
          term.echo(jai_weds_prerita);
          term.pause();
          setTimeout(function(){
            term.resume();
            term.echo(invitation_post);
          }, 400)
        }, 1500)
        
      } else if (inputs[1] === "location") {
        term.echo(venue_address);
        term.echo(wedding_url);
        term.push(function(command, term) {
          if (/y(es){0,1}/.test(command)) {
            window.open(
              wedding_url,
              '_blank' // <- This is what makes it open in a new window.
            );
          }
          term.pop();
        }, {
          prompt: 'Do you want to open this link in the browser? (yes/no) ',
          greetings: null
        });
      } else if (inputs[1] === "rsvp") {
        term.echo(rsvp)
      } else {
        term.error(inputs.join(" ") + " is not a valid command")
      }
    }

    // Main interpreter function
    function interpreter(input, term) {
      var command, inputs;
      inputs = input.split(/ +/)
      command = inputs[0];
      if (command === "gem") {
        gem(inputs, term);
      } else if (command === "wedding" || command === "help") {
        window.terminal = term;
        if (require_command(gem_install_regex, term.history().data())){
          wedding(inputs, term)
        } else {
          term.error('Please install the gem first by executing\ngem install wedding')
        }
      } else if (/(cd)|(ls)|(cat)/.test(command)) {
        bash(inputs, term)
      } else if (input === "ruby -v"){
        term.echo("1.9.3")
      } else {
        term.error(command + " is not a valid command")
      }
    }

    // Handle bash commands
    function bash(inputs, term) {
      var argument, echo, insert;

      echo = term.echo;
      insert = term.insert;
      if (!inputs[1]) {
        return console.log("none");
      } else {
        argument = inputs[1];
        if (/^\.\./.test(argument)) {
          return echo("-bash: cd: " + argument + ": Permission denied");
        } else {
          return echo("-bash: cd: " + argument + ": No such file or directory");
        }
      }
    };

    $('#terminal').terminal( interpreter, {
      prompt: prompt,
      name: 'wedding',
      greetings: greetings,
      height: 600,
      onInit: function(term){
        term.insert("gem install wedding");
        term.history().clear();
      },
      completion: function(term, string, callback){
        callback(['gem install wedding',
          'wedding invitation',
          'wedding location',
          'wedding groom',
          'wedding rsvp',
          'wedding bride']);
      },
      tabcompletion: true
    });

});