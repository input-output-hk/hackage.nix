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
      specVersion = "2.4";
      identifier = { name = "minilight-lua"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ioi.joi.koi.loi@gmail.com";
      author = "myuon";
      homepage = "";
      url = "";
      synopsis = "A binding library of minilight for Lua langauge.";
      description = "This library provides a way to write minilight component in Lua language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."minilight" or (errorHandler.buildDepError "minilight"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."minilight" or (errorHandler.buildDepError "minilight"))
            (hsPkgs."minilight-lua" or (errorHandler.buildDepError "minilight-lua"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }