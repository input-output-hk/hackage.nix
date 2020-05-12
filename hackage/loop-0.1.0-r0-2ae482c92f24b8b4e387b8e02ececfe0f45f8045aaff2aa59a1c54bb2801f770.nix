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
      identifier = { name = "loop"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2014 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/loop";
      url = "";
      synopsis = "Fast loops (for when GHC can't optimize forM_)";
      description = "This package provides a convenient and fast alternative to the common\n`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient\ncode.\n\nSee https://ghc.haskell.org/trac/ghc/ticket/8763.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "bench-traverse-w32" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."loop" or (errorHandler.buildDepError "loop"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "bench-foldl-and-iorefs-are-slow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }