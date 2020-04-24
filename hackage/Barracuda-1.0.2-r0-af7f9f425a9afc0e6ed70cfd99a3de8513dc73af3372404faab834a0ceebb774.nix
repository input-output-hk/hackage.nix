{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Barracuda"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs <stephan.friedrichs@tu-bs.de>,\nHenning Günther <h.guenther@tu-bs.de>,\nOliver Mielentz <o.mielentz@tu-bs.de>,\nMartin Wegner <mw@mroot.net>";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "An ad-hoc P2P chat program";
      description = "An ad-hoc chat program developed in the software development\ncourse at the TU-Braunschweig. Barracuda (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner) implements an\nad-hoc (p2p) network. On top of that, a chat application has been realised.\n\nJust like in IRC, the communication is organised in channels. A channel may be\nanonymous (the messages' origin is obscured), private (encrypted, only invited\nusers may join them) or public (free for all users).\n\nThe design is elaborated in a series of RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."pkcs1" or ((hsPkgs.pkgs-errors).buildDepError "pkcs1"))
          (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
          (hsPkgs."hsgnutls" or ((hsPkgs.pkgs-errors).buildDepError "hsgnutls"))
          (hsPkgs."xml-parsec" or ((hsPkgs.pkgs-errors).buildDepError "xml-parsec"))
          (hsPkgs."adhoc-network" or ((hsPkgs.pkgs-errors).buildDepError "adhoc-network"))
          ];
        buildable = true;
        };
      exes = {
        "Barracuda" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."pkcs1" or ((hsPkgs.pkgs-errors).buildDepError "pkcs1"))
            (hsPkgs."heap" or ((hsPkgs.pkgs-errors).buildDepError "heap"))
            (hsPkgs."hsgnutls" or ((hsPkgs.pkgs-errors).buildDepError "hsgnutls"))
            (hsPkgs."xml-parsec" or ((hsPkgs.pkgs-errors).buildDepError "xml-parsec"))
            (hsPkgs."adhoc-network" or ((hsPkgs.pkgs-errors).buildDepError "adhoc-network"))
            ];
          buildable = true;
          };
        };
      };
    }