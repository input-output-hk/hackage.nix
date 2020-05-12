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
      identifier = { name = "monad-lgbt"; version = "0.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "Michal J. Gajda <mjgajda@gmail.com>";
      author = "Michal J. Gajda <mjgajda@gmail.com>";
      homepage = "https://github.com/mgajda/monad-lgbt#readme";
      url = "";
      synopsis = "Monad transformers for combining local and global state.";
      description = "This is library providing a nice typeclass interface for monads with two different states: local and global. Local state is backtraced whenever intervening monad transformer backtracks. Global state is preserved across all backtracing. It provides nice, classy interface for monads with backtracking/backjumping/continuations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }