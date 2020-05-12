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
      identifier = { name = "naperian"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Aaron Vargo 2017";
      maintainer = "Aaron Vargo <fpfundamentalist@gmail.com>";
      author = "Aaron Vargo";
      homepage = "https://github.com/aaronvargo/naperian#readme";
      url = "";
      synopsis = "Efficient representable functors";
      description = "See the readme at <https://github.com/aaronvargo/naperian#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."streams" or (errorHandler.buildDepError "streams"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          ];
        buildable = true;
        };
      };
    }