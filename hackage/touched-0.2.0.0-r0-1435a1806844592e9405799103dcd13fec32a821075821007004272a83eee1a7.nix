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
      identifier = { name = "touched"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2015 to Alex Crough";
      maintainer = "alex@crough.org";
      author = "Alex Crough";
      homepage = "";
      url = "";
      synopsis = "Library (and cli) to execute a procedure on file change.";
      description = "A small, IO-heavy library that monitors files for changes and runs either a system shell command or a Haskell `IO ()` action.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "touched" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."touched" or (errorHandler.buildDepError "touched"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }