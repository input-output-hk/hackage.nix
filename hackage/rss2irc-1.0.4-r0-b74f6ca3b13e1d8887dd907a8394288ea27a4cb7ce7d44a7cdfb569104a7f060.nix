{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "rss2irc";
        version = "1.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
      homepage = "http://hackage.haskell.org/package/rss2irc";
      url = "";
      synopsis = "watches an RSS/Atom feed and writes it to an IRC channel";
      description = "rss2irc is an IRC bot that polls an RSS or Atom feed and announces updates to an IRC channel, with options for customizing output and behavior.\nIt aims to be an easy-to-use, reliable, well-behaved bot.\n\nUsage: @rss2irc FEEDURL [BOTNAME\\@IRCSERVER/#CHANNEL] [OPTS]@\n\nFor example, to announce Hackage uploads (like hackagebot):\n\n> \$ rss2irc http://hackage.haskell.org/packages/archive/recent.rss mybot@irc.freenode.org/#haskell\n\n1.0.4\n\n* fix compilation with GHC 7.4 (Fabien Andre)\n\n1.0.3\n\n* fix http-conduit usage so the feed poller doesn't die within hours\n\n1.0.2\n\n* `--use-actions` works again\n\n1.0.1\n\n* fix release notes formatting on hackage\n\n1.0 (2013\\/2\\/15)\n\nNew:\n\n* more robust item detection and duplicate announcement protection, with simpler options\n\n* easier irc address syntax, drop -p/--port option\n\n* can poll https feeds\n\n* can poll from stdin (-)\n\n* can poll a file containing multiple copies of a feed (eg for testing)\n\n* `--cache-control` option sets a HTTP Cache-Control header\n\n* `--use-actions` announces with CTCP ACTIONs (like the /me command)\n\nFixed:\n\n* updated for GHC 7.6 & current libs\n\n* initialises http properly on microsoft windows\n\n* builds threaded and optimised by default\n\n* thread and error handling is more robust, eg don't ignore exceptions in the irc writer thread\n\n* can poll urls with semicolon parameter separator (eg darcsweb's)\n\n* can announce item urls containing percent\n\n* no longer adds stray \"upload:\" to IRC messages\n\n* renamed --dupe-descriptions to `--allow-duplicates`\n\n* dropped --debug flag\n\n* new item detection and announcing is more robust\n\n* announcements on console are clearer\n\n* a simulated irc connection is not logged unless --debug-irc is used\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rss2irc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cabal-file-th)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.irc)
            (hsPkgs.feed)
            (hsPkgs.http-conduit)
            (hsPkgs.resourcet)
            (hsPkgs.http-types)
            (hsPkgs.io-storage)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.regexpr)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }