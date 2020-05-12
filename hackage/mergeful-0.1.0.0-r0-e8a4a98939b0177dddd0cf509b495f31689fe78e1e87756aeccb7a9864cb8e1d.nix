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
      identifier = { name = "mergeful"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/mergeful#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/mergeful#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-containers" or (errorHandler.buildDepError "validity-containers"))
          (hsPkgs."validity-time" or (errorHandler.buildDepError "validity-time"))
          ];
        buildable = true;
        };
      };
    }