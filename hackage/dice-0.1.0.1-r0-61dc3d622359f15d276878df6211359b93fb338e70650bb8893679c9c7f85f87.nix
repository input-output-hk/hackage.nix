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
      specVersion = "1.6";
      identifier = { name = "dice"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "Simplistic D&D style dice-rolling system.";
      description = "Simplistic D&D style dice-rolling system.\n\n> \$ dice \"2d10 + 2 * (d100 / d6)\"\n> (5+2) + 2 * 64 / 2 => 71";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = { "dice" = { buildable = true; }; };
      };
    }