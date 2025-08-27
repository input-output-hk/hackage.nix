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
      identifier = { name = "granite"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2024-2025 Michael Chavinda";
      maintainer = "mschavinda@gmail.com";
      author = "Michael Chavinda";
      homepage = "";
      url = "";
      synopsis = "Easy terminal plotting.";
      description = "A terminal plotting library for quick and easy visualisation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "granite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."granite" or (errorHandler.buildDepError "granite"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "granite-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."granite" or (errorHandler.buildDepError "granite"))
          ];
          buildable = true;
        };
      };
    };
  }