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
      specVersion = "1.10";
      identifier = { name = "funbot"; version = "0.4"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "The Freepost community, see AUTHORS file";
      homepage = "https://notabug.org/fr33domlover/funbot";
      url = "";
      synopsis = "IRC bot for fun, learning, creativity and collaboration.";
      description = "One day an idea came up on the #freepost IRC channel: We didn't need much of\nthe serious features IRC bots provide, but we could develop an IRC bot\ncollaboratively, for fun and for learning new skills and languages! I also\nthought this is a great chance for people to quickly see their code in real\nuse, which is motivating when learning programming, and it's a chance to\nintroduce Haskell to the community.\n\nWhile the bot is made for and by the <https://freepo.st Freepost> community,\nit is fully intended for use any anyone else! For experienced Haskell\ndevelopers, this bot can perhaps provide space for creativity and custom\nadvanced plugins and features.\n\nSince this bot is meant for collaborative development while really running\nit, the running instance in @#freepost@ is built from the git repository.\nOccasionally releases will be made to Hackage. If you want to be sure you\nhave all the latest features, check out the git repository (and/or ask us to\nmake a release if you think it's been long enough).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "funbot" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."auto-update" or (buildDepError "auto-update"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."clock" or (buildDepError "clock"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."feed-collect" or (buildDepError "feed-collect"))
            (hsPkgs."funbot-ext-events" or (buildDepError "funbot-ext-events"))
            (hsPkgs."HTTP" or (buildDepError "HTTP"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."http-listen" or (buildDepError "http-listen"))
            (hsPkgs."irc-fun-bot" or (buildDepError "irc-fun-bot"))
            (hsPkgs."irc-fun-color" or (buildDepError "irc-fun-color"))
            (hsPkgs."json-state" or (buildDepError "json-state"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."settings" or (buildDepError "settings"))
            (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."time-interval" or (buildDepError "time-interval"))
            (hsPkgs."time-units" or (buildDepError "time-units"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."vcs-web-hook-parse" or (buildDepError "vcs-web-hook-parse"))
            ];
          buildable = true;
          };
        };
      };
    }