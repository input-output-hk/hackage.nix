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
      identifier = { name = "finito"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/finito#readme";
      url = "";
      synopsis = "Constraint Solver for Finite Domains";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/finito#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."numeric-domains" or (errorHandler.buildDepError "numeric-domains"))
          (hsPkgs."propeller" or (errorHandler.buildDepError "propeller"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "queens" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."finito" or (errorHandler.buildDepError "finito"))
            (hsPkgs."numeric-domains" or (errorHandler.buildDepError "numeric-domains"))
            (hsPkgs."propeller" or (errorHandler.buildDepError "propeller"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "sudoku" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."finito" or (errorHandler.buildDepError "finito"))
            (hsPkgs."numeric-domains" or (errorHandler.buildDepError "numeric-domains"))
            (hsPkgs."propeller" or (errorHandler.buildDepError "propeller"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }