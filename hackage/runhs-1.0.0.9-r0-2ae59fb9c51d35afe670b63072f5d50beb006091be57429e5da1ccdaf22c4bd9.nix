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
      specVersion = "2.2";
      identifier = { name = "runhs"; version = "1.0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020-2021 Daniel Brice";
      maintainer = "danielbrice@gmail.com";
      author = "Daniel Brice";
      homepage = "https://github.com/friedbrice/runhs#readme";
      url = "";
      synopsis = "Stack wrapper for single-file Haskell programs.";
      description = "Stack wrapper for single-file Haskell programs.\nDeclare package dependencies in the source code of your single-file Haskell program.\nEasily and reliably run your program, compile it, or load it in GHCi or Ghcid.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "runhs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."word-wrap" or (errorHandler.buildDepError "word-wrap"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "runhs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }