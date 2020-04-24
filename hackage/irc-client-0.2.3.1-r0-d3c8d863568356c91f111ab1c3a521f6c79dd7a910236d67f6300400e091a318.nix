{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-client"; version = "0.2.3.1"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."irc-conduit" or ((hsPkgs.pkgs-errors).buildDepError "irc-conduit"))
          (hsPkgs."irc-ctcp" or ((hsPkgs.pkgs-errors).buildDepError "irc-ctcp"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          ];
        buildable = true;
        };
      };
    }