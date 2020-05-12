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
      identifier = { name = "pqueue"; version = "1.3.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>\nLouis Wasserman <wasserman.louis@gmail.com>";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Reliable, persistent, fast priority queues.";
      description = "A fast, reliable priority queue implementation based on a binomial heap.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }