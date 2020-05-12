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
      identifier = { name = "vcatt"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "bergey@teallabs.org";
      author = "Daniel Bergey";
      homepage = "http://github.com/bergey/vcatt";
      url = "";
      synopsis = "Recursively check that a directory is under version control.";
      description = "Version control all the things.  Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          ];
        buildable = true;
        };
      exes = {
        "vcatt" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vcatt" or (errorHandler.buildDepError "vcatt"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }