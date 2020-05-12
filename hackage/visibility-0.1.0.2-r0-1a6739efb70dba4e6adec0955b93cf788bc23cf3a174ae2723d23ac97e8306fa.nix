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
      identifier = { name = "visibility"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2015 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://github.com/LukaHorvat/visibility";
      url = "";
      synopsis = "Simple computation of visibility polygons.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }