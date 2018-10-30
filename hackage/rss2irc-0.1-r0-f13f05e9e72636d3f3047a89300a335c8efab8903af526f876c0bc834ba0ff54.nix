{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "rss2irc";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/rss2irc";
      url = "";
      synopsis = "Subscribe to an RSS feed and write it to an IRC channel";
      description = "Subscribe to an RSS feed and write it to an IRC channel\n\nExample, announce Hackage updates in channel:\n\n> rss2irc irc.freenode.org 6667 #zid39kd3 rss2irc http://hackage.haskell.org/packages/archive/recent.rss \"New package: \"\n";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rss2irc" = {
          depends  = [
            (hsPkgs.feed)
            (hsPkgs.tagsoup)
            (hsPkgs.strict-concurrency)
            (hsPkgs.mtl)
            (hsPkgs.network)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.parallel)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }