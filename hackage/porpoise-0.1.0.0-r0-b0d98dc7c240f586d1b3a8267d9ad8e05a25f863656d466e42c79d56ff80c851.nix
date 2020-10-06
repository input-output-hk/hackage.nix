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
      identifier = { name = "porpoise"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Samuel Schlesinger";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "";
      url = "";
      synopsis = "A minimalist HTTP server framework written on top of wai";
      description = "A minimalist HTTP server framework written on top of wai.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          ];
        buildable = true;
        };
      exes = {
        "porpoise-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."porpoise" or (errorHandler.buildDepError "porpoise"))
            ];
          buildable = true;
          };
        };
      };
    }