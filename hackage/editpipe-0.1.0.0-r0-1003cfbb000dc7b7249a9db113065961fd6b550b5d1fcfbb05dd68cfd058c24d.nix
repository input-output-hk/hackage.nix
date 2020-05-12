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
      identifier = { name = "editpipe"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Brian McKenna";
      maintainer = "brian@brianmckenna.org";
      author = "Brian McKenna";
      homepage = "http://github.com/puffnfresh/editpipe#readme";
      url = "";
      synopsis = "Edit stdin using an editor before sending to stdout.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      exes = {
        "editpipe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }