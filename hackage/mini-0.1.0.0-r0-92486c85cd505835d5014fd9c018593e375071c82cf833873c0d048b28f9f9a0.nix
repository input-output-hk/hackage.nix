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
      identifier = { name = "mini"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2023-2024 Victor Wallsten";
      maintainer = "victor.wallsten@protonmail.com";
      author = "Victor Wallsten";
      homepage = "https://gitlab.com/vicwall/mini";
      url = "";
      synopsis = "Minimal essentials";
      description = "A minimal yet powerful library of essentials, only depending on\n@base@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }