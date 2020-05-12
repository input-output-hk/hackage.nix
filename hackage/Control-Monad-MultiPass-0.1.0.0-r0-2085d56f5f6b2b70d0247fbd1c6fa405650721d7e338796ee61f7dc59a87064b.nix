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
      specVersion = "1.8";
      identifier = { name = "Control-Monad-MultiPass"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Kevin Backhouse, 2013";
      maintainer = "Kevin.Backhouse@gmail.com";
      author = "Kevin Backhouse";
      homepage = "https://github.com/kevinbackhouse/Control-Monad-MultiPass";
      url = "";
      synopsis = "A Library for Writing Multi-Pass Algorithms.";
      description = "The MultiPass library supports a monadic programming\nidiom in which multi-pass algorithms are written\nin a single-pass style.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."Control-Monad-ST2" or (errorHandler.buildDepError "Control-Monad-ST2"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Control-Monad-ST2" or (errorHandler.buildDepError "Control-Monad-ST2"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }