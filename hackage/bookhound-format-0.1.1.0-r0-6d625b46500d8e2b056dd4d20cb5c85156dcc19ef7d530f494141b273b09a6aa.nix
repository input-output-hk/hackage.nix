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
      identifier = { name = "bookhound-format"; version = "0.1.1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2022 Alberto Perez Lopez";
      maintainer = "albertoperez1994@gmail.com";
      author = "Alberto Perez Lopez";
      homepage = "https://github.com/albertprz/bookhound-format#readme";
      url = "";
      synopsis = "Parsers for usual data formats";
      description = "Please see the README on GitHub at <https://github.com/albertprz/bookhound-format#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bookhound" or (errorHandler.buildDepError "bookhound"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }