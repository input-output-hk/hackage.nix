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
      identifier = { name = "websockets-simple-extra"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/websockets-simple-extra#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/athanclark/websockets-simple-extra#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."websockets-simple" or (errorHandler.buildDepError "websockets-simple"))
          ];
        buildable = true;
        };
      };
    }