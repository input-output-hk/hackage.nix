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
      identifier = { name = "up"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/up";
      url = "";
      synopsis = "Command line tool to generate pathnames to facilitate moving upward in a file system.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "up" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lambda-options" or (errorHandler.buildDepError "lambda-options"))
          ];
          buildable = true;
        };
      };
    };
  }