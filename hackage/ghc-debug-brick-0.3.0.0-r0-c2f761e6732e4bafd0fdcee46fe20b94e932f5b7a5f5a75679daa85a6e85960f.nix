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
      identifier = { name = "ghc-debug-brick"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matthew@well-typed.com";
      author = "David Eichmann, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "A simple TUI using ghc-debug";
      description = "A simple TUI using ghc-debug";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-debug-brick" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."ghc-debug-client" or (errorHandler.buildDepError "ghc-debug-client"))
            (hsPkgs."ghc-debug-common" or (errorHandler.buildDepError "ghc-debug-common"))
            (hsPkgs."ghc-debug-convention" or (errorHandler.buildDepError "ghc-debug-convention"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."contra-tracer" or (errorHandler.buildDepError "contra-tracer"))
            ];
          buildable = true;
          };
        };
      };
    }