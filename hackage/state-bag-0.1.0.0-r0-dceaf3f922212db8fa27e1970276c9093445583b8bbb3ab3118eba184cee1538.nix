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
      identifier = { name = "state-bag"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Robin KAY";
      maintainer = "komadori@gekkou.co.uk";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/software/";
      url = "";
      synopsis = "Monad transformers for holding bags of state.";
      description = "A state monad transformer which can hold multiple different state values\nrepresented in a type-level list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."state-bag" or (errorHandler.buildDepError "state-bag"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }