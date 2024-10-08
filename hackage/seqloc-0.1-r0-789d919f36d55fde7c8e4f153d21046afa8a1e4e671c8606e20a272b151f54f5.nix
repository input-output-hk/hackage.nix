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
    flags = { tests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "seqloc"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick@ingolia.org";
      author = "Nick Ingolia";
      homepage = "http://www.ingolia-lab.org/software/seqloc/";
      url = "";
      synopsis = "Handle sequence locations for bioinformatics";
      description = "Handle sequence locations for bioinformatics";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
        ];
        buildable = true;
      };
      exes = {
        "test-seqloc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }