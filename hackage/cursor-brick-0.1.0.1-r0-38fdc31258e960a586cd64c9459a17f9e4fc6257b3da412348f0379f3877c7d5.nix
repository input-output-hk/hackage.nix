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
      identifier = { name = "cursor-brick"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/cursor-brick#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/cursor-brick#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."cursor" or (errorHandler.buildDepError "cursor"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }