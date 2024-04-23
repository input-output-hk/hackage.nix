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
    flags = { werror = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "structural-induction"; version = "0.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Dan Rosén <danr@chalmers.se>";
      author = "Dan Rosén";
      homepage = "http://www.github.com/danr/structural-induction";
      url = "";
      synopsis = "Instantiate structural induction schemas for algebraic data types";
      description = "See documentation for Induction.Structural";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."genifunctors" or (errorHandler.buildDepError "genifunctors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ];
        buildable = true;
      };
      tests = {
        "walk" = {
          depends = [
            (hsPkgs."structural-induction" or (errorHandler.buildDepError "structural-induction"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."language-haskell-extract" or (errorHandler.buildDepError "language-haskell-extract"))
            (hsPkgs."testing-feat" or (errorHandler.buildDepError "testing-feat"))
            (hsPkgs."geniplate" or (errorHandler.buildDepError "geniplate"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
          buildable = true;
        };
      };
    };
  }