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
    flags = { containers042 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "fgl"; version = "5.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Martin Erwig, Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Martin Erwig's Functional Graph Library";
      description = "An inductive representation of manipulating graph data structures.\n\nOriginal website can be found at <http://web.engr.oregonstate.edu/~erwig/fgl/haskell>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ (if flags.containers042
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ]
          else [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      tests = {
        "fgl-tests" = {
          depends = [
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "fgl-benchmark" = {
          depends = [
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."microbench" or (errorHandler.buildDepError "microbench"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            ];
          buildable = if flags.containers042 then true else false;
          };
        };
      };
    }