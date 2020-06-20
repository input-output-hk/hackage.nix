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
      specVersion = "1.12";
      identifier = { name = "interact"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2020 Evgeny Poberezkin";
      maintainer = "evgeny@poberezkin.com";
      author = "Evgeny Poberezkin";
      homepage = "https://github.com/epoberezkin/interact#readme";
      url = "";
      synopsis = "instantly create REPL from any function";
      description = "This module provides functions to create interactive REPLs:\n\n- stateless REPL from a single argument functions\n- REPL with state from plain state function or with State monad\n- REPL-fold from two-arguments functions, with the accumulator in the first argument\n\nEach line you enter is 'read' into the argument type and sent to the function, with the result printed";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "interact-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."interact" or (errorHandler.buildDepError "interact"))
            (hsPkgs."main-tester" or (errorHandler.buildDepError "main-tester"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            ];
          buildable = true;
          };
        };
      };
    }