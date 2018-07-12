{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rss2irc";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Michael <simon@joyful.com>";
        author = "Don Stewart <dons@galois.com>, Simon Michael <simon@joyful.com>";
        homepage = "http://hackage.haskell.org/package/rss2irc";
        url = "";
        synopsis = "watches an RSS/Atom feed and writes it to an IRC channel";
        description = "rss2irc is an IRC bot that polls an RSS or Atom feed and announces updates to an IRC channel, with options for customizing output and behavior.\nIt aims to be an easy-to-use, reliable, well-behaved bot.\n\nUsage: @rss2irc FEEDURL [BOTNAME\\@IRCSERVER/#CHANNEL] [OPTS]@\n\nFor example, to announce Hackage uploads (like hackagebot):\n\n> \$ rss2irc http://hackage.haskell.org/packages/archive/recent.rss mybot@irc.freenode.org/#haskell";
        buildType = "Simple";
      };
      components = {
        exes = {
          "rss2irc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.SafeSemaphore
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.irc
              hsPkgs.feed
              hsPkgs.http-client
              hsPkgs.http-conduit
              hsPkgs.resourcet
              hsPkgs.http-types
              hsPkgs.io-storage
              hsPkgs.network
              hsPkgs.network-uri
              hsPkgs.old-locale
              hsPkgs.parsec
              hsPkgs.regexpr
              hsPkgs.safe
              hsPkgs.split
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.time
              hsPkgs.utf8-string
              hsPkgs.SafeSemaphore
            ];
          };
        };
      };
    }