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
      specVersion = "2.2";
      identifier = { name = "interval-functor"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2020 Rob Rix";
      maintainer = "rob.rix@me.com";
      author = "Rob Rix";
      homepage = "https://github.com/robrix/interval-functor";
      url = "";
      synopsis = "Intervals of functors.";
      description = "Closed intervals in spaces described by a functor.";
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
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."interval-functor" or (errorHandler.buildDepError "interval-functor"))
            ];
          buildable = true;
          };
        };
      };
    }