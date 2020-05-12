{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rss2irc"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
      homepage = "http://hackage.haskell.org/package/rss2irc";
      url = "";
      synopsis = "Watch an RSS/Atom feed and write it to an IRC channel";
      description = "This bot polls a single RSS or Atom feed and announces updates to an\nIRC channel, with options for customizing output and behavior. It\naims to be a simple, dependable bot that does its job and creates no\nproblems.\n\n> Usage: rss2irc FEEDURL [BOTNAME@IRCSERVER/#CHANNEL] [OPTS]\n> Options:\n>\n>   -p PORT  --port=PORT                   irc server port (default 6667)\n>            --ident=STR                   set the bot's identity string (useful for contact info)\n>            --delay=N                     wait for N minutes before starting (helps avoid mass joins)\n>   -i N     --interval=N                  polling interval in minutes (default 5)\n>            --idle=N                      announce only when channel has been idle N minutes (default 0)\n>   -m N     --max-items=N                 announce at most N items per polling interval (default 5)\n>   -r N     --recent=N                    announce up to N recent items at startup (default 0)\n>            --announce=topnew|allnew|top  which items to announce (default: topnew)\n>            --no-title                    don't show title (title is announced by default, up to 100 chars)\n>   -a       --author                      show author (up to 50 chars)\n>   -d       --description                 show description (up to 300 chars)\n>   -l       --link                        show link URL (up to 200 chars)\n>   -t       --time                        show timestamp (up to 50 chars)\n>   -e       --email                       show email addresses (stripped by default)\n>   -h       --html                        show HTML tags and entities (stripped by default)\n>            --dupe-descriptions           show identical consecutive descriptions (elided by default)\n>            --replace=\"OLD/NEW\"           replace OLD with NEW (regexpr patterns)\n>   -n N     --num-iterations=N            exit after N iterations\n>   -q       --quiet                       silence normal console output\n>            --debug                       do not connect to irc (same as no irc argument)\n>            --debug-irc                   show irc activity\n>            --debug-feed                  show feed items and polling stats\n>            --debug-xml                   show feed content\n>            --debug-http                  show feed fetching progress\n> Options:\n>\n>   -p PORT  --port=PORT          irc server port (default 6667)\n>            --ident=STR          set the bot's identity string (useful for contact info)\n>            --delay=N            wait for N seconds before starting (helps avoid mass joins)\n>   -i N     --interval=N         polling interval in minutes (default 5)\n>   -r N     --recent=N           announce up to N recent items at startup (default 0)\n>   -m N     --max-items=N        announce at most N items per polling interval (default 5)\n>            --no-title           don't show title (title is announced by default)\n>   -a       --author             show author\n>   -d       --description        show description\n>   -l       --link               show link URL\n>   -t       --time               show timestamp\n>   -e       --email              show email addresses (these are stripped by default)\n>   -h       --html               show HTML tags and entities (these are stripped by default)\n>            --replace=\"OLD/NEW\"  replace OLD with NEW (regexpr patterns)\n>   -n N     --num-iterations=N   exit after N iterations\n>   -q       --quiet              silence normal console output\n>            --debug              do not connect to irc\n>            --debug-irc          show irc activity\n>            --debug-feed         show feed items and polling stats\n>            --debug-xml          show feed content\n>            --debug-http         show feed fetching progress\n\nFor example, to announce Hackage updates:\n\n> rss2irc http://hackage.haskell.org/packages/archive/recent.rss mybot@irc.freenode.org/#haskell\n\nRelease notes for 0.4, 2009/09/25:\n\n* wait for server connection confirmation before JOIN command.\nProblem was observed on irc.quakenet.org since it refuses\nto join or any commands before connection is confirmed by server. (Radoslav Dorcik)\n\n* feed polling now recovers from transient failures\n\n* can poll a local file: uri as well as remote uris\nWorks if the uri is of the form \"file:FILE\", at least. Useful for testing\nand eg for announcing a feed generated from a darcs posthook.\n\n* more robust new item detection, with some alternate strategies\navailable via the --announce option. The choices are:\ntopnew - new unseen items at the top (default, good for most feeds);\nallnew - new unseen items anywhere\ntop    - any items above the previous top item.\n\n* --idle option, waits for N minutes of channel idle time before announcing\n\n* --delay now takes minutes, not seconds\n\n* limit individual field sizes, preventing too many irc messages per item\nMost announcements should now fit in one irc message, and pretty much all\nshould fit in two.\n\n* misc. announcement output improvements: elide identical consecutive\nitem descriptions, split long announcements on a word boundary, try\nto complete a split announcement within a batch, better whitespace\nhandling\n\n* logging improvements\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rss2irc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."strict-concurrency" or (errorHandler.buildDepError "strict-concurrency"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }