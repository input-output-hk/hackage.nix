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
      specVersion = "1.18";
      identifier = { name = "escaped"; version = "1.1.0.0"; };
      license = "MIT";
      copyright = "2018 Patrick Brisbin";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/escaped#readme";
      url = "";
      synopsis = "Produce Text with terminal escape sequences";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "escaped-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."escaped" or (errorHandler.buildDepError "escaped"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
        "hspec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."escaped" or (errorHandler.buildDepError "escaped"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-properties" or (errorHandler.buildDepError "quickcheck-properties"))
          ];
          buildable = true;
        };
      };
    };
  }