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
      identifier = {
        name = "metro-transport-websockets";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lmjubuntu@gmail.com";
      author = "Lupino";
      homepage = "https://github.com/Lupino/metro#readme";
      url = "";
      synopsis = "Websockets transport for metro";
      description = "Please see the README on GitHub at <https://github.com/Lupino/metro/tree/master/metro-transport-websockets#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."metro" or (errorHandler.buildDepError "metro"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ];
        buildable = true;
        };
      };
    }