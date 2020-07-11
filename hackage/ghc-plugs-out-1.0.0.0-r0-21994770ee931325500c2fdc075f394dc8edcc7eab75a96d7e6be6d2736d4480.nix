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
      specVersion = "3.0";
      identifier = { name = "ghc-plugs-out"; version = "1.0.0.0"; };
      license = "MPL-2.0";
      copyright = "© 2020 Phil de Joux, © 2020 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/ghc-plugs-out";
      url = "";
      synopsis = "Type checker plugins without the type checking.";
      description = "Tests that show how typechecker plugins interact with GHC depending on their\npurity, how they're wired up and whether GHC needs help typechecking.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "no-op-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ];
          buildable = true;
          };
        "undefined-init-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."no-op-plugin" or (errorHandler.buildDepError "no-op-plugin"))
            ];
          buildable = true;
          };
        "undefined-solve-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."no-op-plugin" or (errorHandler.buildDepError "no-op-plugin"))
            ];
          buildable = true;
          };
        "undefined-stop-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."no-op-plugin" or (errorHandler.buildDepError "no-op-plugin"))
            ];
          buildable = true;
          };
        "call-count-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
            (hsPkgs."no-op-plugin" or (errorHandler.buildDepError "no-op-plugin"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-undefined-init" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-init-plugin" or (errorHandler.buildDepError "undefined-init-plugin"))
            ];
          buildable = true;
          };
        "test-undefined-init-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-init-plugin" or (errorHandler.buildDepError "undefined-init-plugin"))
            ];
          buildable = true;
          };
        "test-undefined-solve" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-solve-plugin" or (errorHandler.buildDepError "undefined-solve-plugin"))
            ];
          buildable = true;
          };
        "test-undefined-solve-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-solve-plugin" or (errorHandler.buildDepError "undefined-solve-plugin"))
            ];
          buildable = true;
          };
        "test-undefined-stop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-stop-plugin" or (errorHandler.buildDepError "undefined-stop-plugin"))
            ];
          buildable = true;
          };
        "test-undefined-stop-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."undefined-stop-plugin" or (errorHandler.buildDepError "undefined-stop-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-pure-by-option" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-pure-by-pragma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-pure-by-both" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-impure-by-option" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-impure-by-pragma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-wireup-impure-by-both" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-counter-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-counter-foo-bar-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        "test-counter-foobar-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-count-plugin" or (errorHandler.buildDepError "call-count-plugin"))
            ];
          buildable = true;
          };
        };
      };
    }