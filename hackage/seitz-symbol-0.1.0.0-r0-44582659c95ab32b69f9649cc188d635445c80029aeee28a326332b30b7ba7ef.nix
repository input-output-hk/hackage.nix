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
      identifier = { name = "seitz-symbol"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Jun Narumi";
      maintainer = "narumij@gmail.com";
      author = "Jun Narumi";
      homepage = "https://github.com/narumij/seitz-symbol#readme";
      url = "";
      synopsis = "Read and Display Seitz Symbol";
      description = "Please see the README on GitHub at <https://github.com/narumij/seitz-symbol#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."matrix-as-xyz" or (errorHandler.buildDepError "matrix-as-xyz"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."symmetry-operations-symbols" or (errorHandler.buildDepError "symmetry-operations-symbols"))
        ];
        buildable = true;
      };
      tests = {
        "seitz-symbol-doctest" = {
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
        "seitz-symbol-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
            (hsPkgs."matrix-as-xyz" or (errorHandler.buildDepError "matrix-as-xyz"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."seitz-symbol" or (errorHandler.buildDepError "seitz-symbol"))
            (hsPkgs."symmetry-operations-symbols" or (errorHandler.buildDepError "symmetry-operations-symbols"))
          ];
          buildable = true;
        };
      };
    };
  }