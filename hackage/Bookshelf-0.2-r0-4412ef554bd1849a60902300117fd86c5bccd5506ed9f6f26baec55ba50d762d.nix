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
      identifier = { name = "Bookshelf"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2009-2012 Emil Axelsson";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "http://www.cse.chalmers.se/~emax/bookshelf/Manual.shelf.html";
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
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            ];
          buildable = true;
          };
        };
      };
    }