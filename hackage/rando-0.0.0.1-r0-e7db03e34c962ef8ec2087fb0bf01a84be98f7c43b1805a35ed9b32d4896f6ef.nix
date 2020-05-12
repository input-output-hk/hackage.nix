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
      identifier = { name = "rando"; version = "0.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Easy-to-use randomness for livecoding";
      description = "Easy-to-use randomness for livecoding.\n\nThe goal is to provide the simplest possible experience, e.g.\n\n> >>> pickOne [\"lemon\", \"lime\", \"strawberry\"]\n> \"lime\" :: IO String\n\nThis library is in flux: names will change, types will change, functions\nwill appear and disappear.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          ];
        buildable = true;
        };
      };
    }