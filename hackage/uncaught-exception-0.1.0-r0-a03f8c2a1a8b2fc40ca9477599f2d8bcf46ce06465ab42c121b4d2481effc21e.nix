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
      identifier = { name = "uncaught-exception"; version = "0.1.0"; };
      license = "MPL-2.0";
      copyright = "2020 Serokell <https://serokell.io>";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/uncaught-exception";
      url = "";
      synopsis = "Customize uncaught exception handling.";
      description = "See README.md for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "uncaught-exception-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uncaught-exception" or (errorHandler.buildDepError "uncaught-exception"))
          ];
          buildable = true;
        };
      };
    };
  }