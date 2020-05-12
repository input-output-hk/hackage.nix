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
    flags = { develop = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "free-algebras"; version = "0.0.5.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2018 Marcin Szamotulski";
      maintainer = "profunctor@pm.me";
      author = "Marcin Szamotulski";
      homepage = "https://github.com/coot/free-algebras#readme";
      url = "";
      synopsis = "Free algebras in Haskell.";
      description = "Universal algebra approach to free algebras including higher kinded algebraic structures like functors, applicative functors or monads.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."natural-numbers" or (errorHandler.buildDepError "natural-numbers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "free-algebras-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."free-algebras" or (errorHandler.buildDepError "free-algebras"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."natural-numbers" or (errorHandler.buildDepError "natural-numbers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }