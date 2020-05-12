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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."pkcs1" or (errorHandler.buildDepError "pkcs1"))
          (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
          (hsPkgs."hsgnutls" or (errorHandler.buildDepError "hsgnutls"))
          (hsPkgs."xml-parsec" or (errorHandler.buildDepError "xml-parsec"))
          (hsPkgs."adhoc-network" or (errorHandler.buildDepError "adhoc-network"))
          ];
        buildable = true;
        };
      exes = {
        "Barracuda" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."pkcs1" or (errorHandler.buildDepError "pkcs1"))
            (hsPkgs."heap" or (errorHandler.buildDepError "heap"))
            (hsPkgs."hsgnutls" or (errorHandler.buildDepError "hsgnutls"))
            (hsPkgs."xml-parsec" or (errorHandler.buildDepError "xml-parsec"))
            (hsPkgs."adhoc-network" or (errorHandler.buildDepError "adhoc-network"))
            ];
          buildable = true;
          };
        };
      };
    }