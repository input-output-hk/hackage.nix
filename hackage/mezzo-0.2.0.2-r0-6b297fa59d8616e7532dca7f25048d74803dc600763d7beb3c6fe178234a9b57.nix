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
      identifier = { name = "mezzo"; version = "0.2.0.2"; };
      license = "MIT";
      copyright = "2016 Dima Samozvancev";
      maintainer = "ds709@cam.ac.uk";
      author = "Dima Szamozvancev";
      homepage = "https://github.com/DimaSamoz/mezzo";
      url = "";
      synopsis = "Typesafe music composition";
      description = "A Haskell music composition library that enforces common\nmusical rules in the type system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
        ];
        buildable = true;
      };
      tests = {
        "mezzo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mezzo" or (errorHandler.buildDepError "mezzo"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
          ];
          buildable = true;
        };
      };
    };
  }