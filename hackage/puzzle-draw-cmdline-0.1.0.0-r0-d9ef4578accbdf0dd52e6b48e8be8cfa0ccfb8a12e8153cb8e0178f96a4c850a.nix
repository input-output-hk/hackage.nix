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
      specVersion = "1.8";
      identifier = { name = "puzzle-draw-cmdline"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles, command line tools.";
      description = "Companion executable to puzzle-draw. Separate to keep\nthe dependency on diagrams-cairo out of the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          ];
        buildable = true;
        };
      exes = {
        "drawpuzzle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."puzzle-draw" or (errorHandler.buildDepError "puzzle-draw"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }