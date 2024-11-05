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
      identifier = { name = "tinyapp"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bcardiff@gmail.com";
      author = "Brian J. Cardiff";
      homepage = "https://github.com/bcardiff/haskell-tinyapp";
      url = "";
      synopsis = "Library to build tiny apps in Haskell";
      description = "Library to build tiny apps in Haskell such a REPLs or text-based applications that reacts to keystrokes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "tinyapp-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tinyapp" or (errorHandler.buildDepError "tinyapp"))
          ];
          buildable = true;
        };
      };
    };
  }