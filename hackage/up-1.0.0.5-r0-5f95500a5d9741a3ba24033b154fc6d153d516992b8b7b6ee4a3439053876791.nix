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
      identifier = { name = "up"; version = "1.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Eding";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/up";
      url = "";
      synopsis = "Command-line tool to generate paths for moving upward in a file system";
      description = "Command-line tool to generate paths for moving upward in a file system.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "up" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."lambda-options" or (errorHandler.buildDepError "lambda-options"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }