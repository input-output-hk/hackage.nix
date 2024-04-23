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
      identifier = { name = "ecstasy"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "http://github.com/isovector/ecstasy/";
      url = "";
      synopsis = "A GHC.Generics based entity component system.";
      description = "Ecstasy is an entity-component system for Haskell. It's inspired by\n<https://hackage.haskell.org/package/apecs apecs>, but makes the design\ndecision to focus on being idiomatic rather than being fast. Maybe. I haven't\nactually benchmarked it.\n\nWe achieve being idiomatic by using 'GHC.Generics' and tricky type families\nto derive performant data stores given only a record of the desired\ncomponents.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
        ];
        buildable = true;
      };
    };
  }