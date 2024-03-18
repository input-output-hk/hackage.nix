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
      specVersion = "3.0";
      identifier = { name = "attoparsec-framer"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/attoparsec-framer#readme";
      url = "";
      synopsis = "Use Attoparsec to parse framed protocol byte streams";
      description = "A library that simplifies the use of\n[Attoparsec](https://hackage.haskell.org/package/attoparsec) when processing\nframed protocol byte streams.\n\nAs well as reading the haddocks, please take a look at a\n[demo server](https://github.com/adetokunbo/attoparsec-framer/blob/main/toy/Server.hs)\nand [client](https://github.com/adetokunbo/attoparsec-framer/blob/main/toy/Client.hs)\nas working examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "toy-server" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."attoparsec-framer" or (errorHandler.buildDepError "attoparsec-framer"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "toy-client" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."attoparsec-framer" or (errorHandler.buildDepError "attoparsec-framer"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-run" or (errorHandler.buildDepError "network-run"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."attoparsec-framer" or (errorHandler.buildDepError "attoparsec-framer"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }