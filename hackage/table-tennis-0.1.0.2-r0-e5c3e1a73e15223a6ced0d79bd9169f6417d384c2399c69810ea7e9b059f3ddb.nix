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
      identifier = { name = "table-tennis"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "rorystephenson@gmail.com";
      author = "Rory Stephenson";
      homepage = "";
      url = "";
      synopsis = "A table tennis game tracking engine";
      description = "A table tennis game tracking engine. This is purely a\nfacility for managing a game.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }