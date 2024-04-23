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
      identifier = { name = "prim-spoon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Michael Klein, portions also licensed to: 2009 Matt Morrow & Dan Peebles, 2013 Liyang HU";
      maintainer = "Michael Klein <lambdamichael@gmail.com>";
      author = "Michael Klein";
      homepage = "https://github.com/michaeljklein/prim-spoon";
      url = "";
      synopsis = "Catch errors thrown from pure computations using primops.";
      description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in, but with primops.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."spoon" or (errorHandler.buildDepError "spoon"))
        ];
        buildable = true;
      };
      tests = {
        "prim-spoon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."spoon" or (errorHandler.buildDepError "spoon"))
            (hsPkgs."prim-spoon" or (errorHandler.buildDepError "prim-spoon"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "prim-spoon-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."prim-spoon" or (errorHandler.buildDepError "prim-spoon"))
            (hsPkgs."spoon" or (errorHandler.buildDepError "spoon"))
          ];
          buildable = true;
        };
      };
    };
  }