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
      identifier = { name = "bookhound"; version = "0.1.20.0"; };
      license = "LicenseRef-LGPL";
      copyright = "2021 Alberto Perez Lopez";
      maintainer = "albertoperez1994@gmail.com";
      author = "Alberto Perez Lopez";
      homepage = "https://github.com/albertprz/bookhound#readme";
      url = "";
      synopsis = "Simple Parser Combinators";
      description = "Please see the README on GitHub at <https://github.com/albertprz/bookhound#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }