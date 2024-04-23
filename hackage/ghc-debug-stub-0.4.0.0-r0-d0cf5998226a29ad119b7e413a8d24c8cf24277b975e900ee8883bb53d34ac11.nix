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
    flags = { trace = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "ghc-debug-stub"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019-2021 Ben Gamari, Matthew Pickering";
      maintainer = "matthewtpickering@gmail.com";
      author = "Ben Gamari, Matthew Pickering";
      homepage = "https://gitlab.haskell.org/ghc/ghc-debug";
      url = "";
      synopsis = "Functions for instrumenting your application so the heap\ncan be analysed with ghc-debug-common.";
      description = "Functions for instrumenting your application so the heap can\nbe analysed with ghc-debug-common.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."ghc-debug-convention" or (errorHandler.buildDepError "ghc-debug-convention"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
      };
    };
  }