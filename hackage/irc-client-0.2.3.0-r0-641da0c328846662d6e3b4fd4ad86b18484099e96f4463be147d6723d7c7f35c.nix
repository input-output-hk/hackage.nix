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
      specVersion = "1.10";
      identifier = {
        name = "irc-client";
        version = "0.2.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "mike@barrucadu.co.uk";
      author = "Michael Walker";
      homepage = "https://github.com/barrucadu/irc-client";
      url = "";
      synopsis = "An IRC client library.";
      description = "An IRC client library built atop\n<http://hackage.haskell.org/package/irc-conduit irc-conduit>. Why\nanother IRC client library, you cry? I didn't really find one that\ndid what I wanted (specifically, handle connecting to servers and\ncalling event handlers, possibly with TLS), but which didn't\nimplement almost a full IRC bot for you. That takes out all the fun!\n\n<http://hackage.haskell.org/package/irc-conduit irc-conduit> and\n<http://hackage.haskell.org/package/irc-ctcp irc-ctcp> are my\nsolution to the first part of that, this is my solution to the\nlatter. It's a simple IRC client library that does the basics for\nyou, but isn't an all-singing, all-dancing, fully-featured IRC\n/application/. It is a merely a simple library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.data-default-class)
          (hsPkgs.irc-conduit)
          (hsPkgs.irc-ctcp)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.old-locale)
        ];
      };
    };
  }