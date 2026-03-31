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
      specVersion = "3.4";
      identifier = { name = "diagnostician"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "root@owenlynch.org";
      author = "Owen Lynch";
      homepage = "";
      url = "";
      synopsis = "";
      description = "A minimal, opinionated library for compiler error messages";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "diagnostician-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."diagnostician" or (errorHandler.buildDepError "diagnostician"))
          ];
          buildable = true;
        };
      };
    };
  }