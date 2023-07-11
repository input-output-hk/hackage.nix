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
      specVersion = "3.0";
      identifier = { name = "monads-tf"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <ross@soi.city.ac.uk>,\nChris Martin <chris@typeclasses.com>";
      author = "Andy Gill";
      homepage = "https://github.com/typeclasses/monads-tf";
      url = "";
      synopsis = "Monad classes, using type families";
      description = "Monad classes using type families, with instances for\nvarious monad transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }