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
      identifier = { name = "rss2irc"; version = "1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
      homepage = "http://hackage.haskell.org/package/rss2irc";
      url = "";
      synopsis = "watches an RSS/Atom feed and writes it to an IRC channel";
      description = "rss2irc is an IRC bot that polls an RSS or Atom feed and announces updates to an IRC channel, with options for customizing output and behavior.\nIt aims to be an easy-to-use, reliable, well-behaved bot.\n\nUsage: @rss2irc FEEDURL [BOTNAME\\@IRCSERVER/#CHANNEL] [OPTS]@\n\nFor example, to announce Hackage uploads (like hackagebot):\n\n> \$ rss2irc http://hackage.haskell.org/packages/archive/recent.rss mybot@irc.freenode.org/#haskell\n\n1.0.3 (2013\\/2\\/22)\n\nFixed:\n\n* fix http-conduit usage so the feed poller doesn't die within hours\n\n1.0.2 (2013\\/2\\/18)\n\nFixed:\n\n* `--use-actions` works again\n\n1.0.1 (2013\\/2\\/15)\n\nFixed:\n\n* release notes formatting on hackage\n\n1.0 (2013\\/2\\/15)\n\nNew:\n\n* more robust item detection and duplicate announcement protection, with simpler options\n\n* easier irc address syntax, drop -p/--port option\n\n* can poll https feeds\n\n* can poll from stdin (-)\n\n* can poll a file containing multiple copies of a feed (eg for testing)\n\n* `--cache-control` option sets a HTTP Cache-Control header\n\n* `--use-actions` announces with CTCP ACTIONs (like the /me command)\n\nFixed:\n\n* updated for GHC 7.6 & current libs\n\n* initialises http properly on microsoft windows\n\n* builds threaded and optimised by default\n\n* thread and error handling is more robust, eg don't ignore exceptions in the irc writer thread\n\n* can poll urls with semicolon parameter separator (eg darcsweb's)\n\n* can announce item urls containing percent\n\n* no longer adds stray \"upload:\" to IRC messages\n\n* renamed --dupe-descriptions to `--allow-duplicates`\n\n* dropped --debug flag\n\n* new item detection and announcing is more robust\n\n* announcements on console are clearer\n\n* a simulated irc connection is not logged unless --debug-irc is used\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rss2irc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cabal-file-th" or (buildDepError "cabal-file-th"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."irc" or (buildDepError "irc"))
            (hsPkgs."feed" or (buildDepError "feed"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."io-storage" or (buildDepError "io-storage"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regexpr" or (buildDepError "regexpr"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            ];
          };
        };
      };
    }