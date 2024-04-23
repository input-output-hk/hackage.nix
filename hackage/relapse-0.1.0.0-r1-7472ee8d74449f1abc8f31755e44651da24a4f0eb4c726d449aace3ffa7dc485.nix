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
      specVersion = "1.10";
      identifier = { name = "relapse"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Ilya Ostrovskiy";
      maintainer = "firstname at thenumbertwohundred thewordproof dotcc";
      author = "Ilya Ostrovskiy";
      homepage = "https://github.com/iostat/relapse#readme";
      url = "";
      synopsis = "Sensible RLP encoding";
      description = "An implementation of RLP as specified in the Ethereum Wiki, using Attoparsec";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "relapse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."include-file" or (errorHandler.buildDepError "include-file"))
            (hsPkgs."relapse" or (errorHandler.buildDepError "relapse"))
          ];
          buildable = true;
        };
      };
    };
  }