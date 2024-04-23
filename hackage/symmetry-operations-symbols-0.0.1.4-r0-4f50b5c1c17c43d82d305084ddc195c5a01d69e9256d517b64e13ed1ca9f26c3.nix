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
      specVersion = "1.12";
      identifier = {
        name = "symmetry-operations-symbols";
        version = "0.0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Jun Narumi";
      maintainer = "narumij@gmail.com";
      author = "Jun Narumi";
      homepage = "https://github.com/narumij/symmetry-operations-symbols#readme";
      url = "";
      synopsis = "Derivation of symbols and coordinate triplets Library";
      description = "Please see the README on GitHub at <https://github.com/narumij/symmetry-operations-symbols#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."matrix-as-xyz" or (errorHandler.buildDepError "matrix-as-xyz"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."matrix-as-xyz" or (errorHandler.buildDepError "matrix-as-xyz"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."symmetry-operations-symbols" or (errorHandler.buildDepError "symmetry-operations-symbols"))
          ];
          buildable = true;
        };
        "spec-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."matrix-as-xyz" or (errorHandler.buildDepError "matrix-as-xyz"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."symmetry-operations-symbols" or (errorHandler.buildDepError "symmetry-operations-symbols"))
          ];
          buildable = true;
        };
      };
    };
  }