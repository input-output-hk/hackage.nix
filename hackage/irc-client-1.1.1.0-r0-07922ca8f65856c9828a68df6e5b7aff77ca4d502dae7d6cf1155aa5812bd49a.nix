{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "irc-client"; version = "1.1.1.0"; };
      license = "MIT";
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
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."irc-conduit" or ((hsPkgs.pkgs-errors).buildDepError "irc-conduit"))
          (hsPkgs."irc-ctcp" or ((hsPkgs.pkgs-errors).buildDepError "irc-ctcp"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network-conduit-tls" or ((hsPkgs.pkgs-errors).buildDepError "network-conduit-tls"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          (hsPkgs."x509-validation" or ((hsPkgs.pkgs-errors).buildDepError "x509-validation"))
          ];
        buildable = true;
        };
      };
    }