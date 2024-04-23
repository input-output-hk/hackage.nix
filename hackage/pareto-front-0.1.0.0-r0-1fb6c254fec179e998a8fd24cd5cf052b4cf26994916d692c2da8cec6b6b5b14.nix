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
      specVersion = "1.12";
      identifier = { name = "pareto-front"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Jeremy List";
      maintainer = "quick.dudley@gmail.com";
      author = "Jeremy List";
      homepage = "https://nest.pijul.com/quickdudley/pareto-front";
      url = "";
      synopsis = "Monoids for dealing with Pareto efficiency";
      description = "Two monoids for finding either the Pareto efficient\nsubset of a collection or splitting the collection into a\nseries of Pareto fronts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "pareto-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pareto-front" or (errorHandler.buildDepError "pareto-front"))
          ];
          buildable = true;
        };
      };
    };
  }