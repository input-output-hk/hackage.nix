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
      identifier = { name = "rss2irc"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
      homepage = "http://hackage.haskell.org/package/rss2irc";
      url = "";
      synopsis = "watches an RSS/Atom feed and writes it to an IRC channel";
      description = "rss2irc is an IRC bot that polls an RSS or Atom feed and announces updates to an\nIRC channel, with options for customizing output and behavior.\nIt aims to be an easy-to-use, reliable, well-behaved bot.\n\nUsage: @rss2irc FEEDURL [BOTNAME\\@IRCSERVER/#CHANNEL] [OPTS]@\n\nFor example, to announce Hackage uploads (like hackagebot):\n\n> $ rss2irc http://hackage.haskell.org/packages/archive/recent.rss mybot@irc.freenode.org/#haskell\n\n1.0 (2013/2/15)\n\nNew:\n* more robust item detection and duplicate announcement protection, with simpler options\n* easier irc address syntax, drop -p/--port option\n* can poll urls with semicolon parameter separator (eg darcsweb's)\n* can poll https feeds\n* can poll from stdin (-)\n* can poll a file containing multiple copies of a feed (eg for testing)\n* can announce item urls containing percent\n* `--cache-control` option sets a HTTP Cache-Control header\n* `--use-actions` announces with CTCP ACTIONs (like the /me command)\n\nFixed:\n\n* updated for GHC 7.6 & current libs\n* initialises http properly on microsoft windows\n* builds threaded and optimised by default\n* thread and error handling is more robust, eg don't ignore exceptions in the irc writer thread\n* no longer adds stray \"upload:\" to IRC messages\n* renamed --dupe-descriptions to `--allow-duplicates`\n* dropped --debug flag\n* new item detection and announcing is more robust\n* announcements on console are clearer\n* a simulated irc connection is not logged unless --debug-irc is used\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rss2irc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-file-th" or (errorHandler.buildDepError "cabal-file-th"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."io-storage" or (errorHandler.buildDepError "io-storage"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regexpr" or (errorHandler.buildDepError "regexpr"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }