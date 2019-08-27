let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rss2irc"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
      homepage = "http://hackage.haskell.org/package/rss2irc";
      url = "";
      synopsis = "Watch an RSS/Atom feed and write it to an IRC channel";
      description = "This bot polls a single RSS or Atom feed and announces updates to an\nIRC channel, with options for customizing output and behavior. It\naims to be a simple, dependable bot that does its job and creates no\nproblems.\n\n> Usage: rss2irc [OPTS] FEEDURL [irc://]BOTNAME@IRCSERVER/#CHANNEL\n>    or: rss2irc [OPTS] FEEDURL (same as --debug)\n> Options:\n>\n>   -p PORT  --port=PORT          irc server port (default 6667)\n>            --ident=STR          set the bot's identity string (useful for contact info)\n>            --delay=N            wait for N seconds before starting (helps avoid mass joins)\n>   -i N     --interval=N         polling interval in minutes (default 5)\n>   -r N     --recent=N           announce up to N recent items at startup (default 0)\n>   -m N     --max-items=N        announce at most N items per polling interval (default 5)\n>            --no-title           don't show title (title is announced by default)\n>   -a       --author             show author\n>   -d       --description        show description\n>   -l       --link               show link URL\n>   -t       --time               show timestamp\n>   -e       --email              show email addresses (these are stripped by default)\n>   -h       --html               show HTML tags and entities (these are stripped by default)\n>            --replace=\"OLD/NEW\"  replace OLD with NEW (regexpr patterns)\n>   -n N     --num-iterations=N   exit after N iterations\n>   -q       --quiet              silence normal console output\n>            --debug              do not connect to irc\n>            --debug-irc          show irc activity\n>            --debug-feed         show feed items and polling stats\n>            --debug-xml          show feed content\n>            --debug-http         show feed fetching progress\n\nFor example, to announce Hackage updates:\n\n> rss2irc irc.freenode.org '#haskell' mybot http://hackage.haskell.org/packages/archive/recent.rss";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rss2irc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."strict-concurrency" or (buildDepError "strict-concurrency"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }