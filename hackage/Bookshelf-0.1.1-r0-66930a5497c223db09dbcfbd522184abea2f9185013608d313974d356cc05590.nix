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
      specVersion = "0";
      identifier = { name = "Bookshelf"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "";
      url = "";
      synopsis = "A simple document organizer with some wiki functionality";
      description = "A simple document organizer with some wiki functionality";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bookshelf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            ];
          buildable = true;
          };
        };
      };
    }