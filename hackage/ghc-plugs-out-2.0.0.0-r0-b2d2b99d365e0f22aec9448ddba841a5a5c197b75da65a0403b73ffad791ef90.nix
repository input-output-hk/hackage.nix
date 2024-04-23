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
      identifier = { name = "ghc-plugs-out"; version = "2.0.0.0"; };
      license = "MPL-2.0";
      copyright = "© 2020-2022 Phil de Joux, © 2020-2022 Block Scope Limited";
      maintainer = "phil.dejoux@blockscope.com";
      author = "Phil de Joux";
      homepage = "https://github.com/blockscope/ghc-plugs-out";
      url = "";
      synopsis = "Type checker plugins without the type checking.";
      description = "A __plugs-out__ spacecraft has no cables or umbilicals connected. The plugins\nin this package are __plugs-out__ in the sense that they do no type checking.\n\nThe test suites in this package show how type checker plugins interact with GHC\ndepending on:\n\n* their purity\n\n* how they're wired up\n\n* what options they see\n\n* whether GHC needs help type checking";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "no-op-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-corroborate" or (errorHandler.buildDepError "ghc-corroborate"))
          ];
          buildable = true;
        };
        "undefined-init-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-corroborate" or (errorHandler.buildDepError "ghc-corroborate"))
            (hsPkgs."ghc-plugs-out".components.sublibs.no-op-plugin or (errorHandler.buildDepError "ghc-plugs-out:no-op-plugin"))
          ];
          buildable = true;
        };
        "undefined-solve-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-corroborate" or (errorHandler.buildDepError "ghc-corroborate"))
            (hsPkgs."ghc-plugs-out".components.sublibs.no-op-plugin or (errorHandler.buildDepError "ghc-plugs-out:no-op-plugin"))
          ];
          buildable = true;
        };
        "undefined-stop-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-corroborate" or (errorHandler.buildDepError "ghc-corroborate"))
            (hsPkgs."ghc-plugs-out".components.sublibs.no-op-plugin or (errorHandler.buildDepError "ghc-plugs-out:no-op-plugin"))
          ];
          buildable = true;
        };
        "call-count-plugin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-corroborate" or (errorHandler.buildDepError "ghc-corroborate"))
            (hsPkgs."th-printf" or (errorHandler.buildDepError "th-printf"))
            (hsPkgs."ghc-plugs-out".components.sublibs.no-op-plugin or (errorHandler.buildDepError "ghc-plugs-out:no-op-plugin"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-undefined-init" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-init-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-init-plugin"))
          ];
          buildable = true;
        };
        "test-undefined-init-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-init-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-init-plugin"))
          ];
          buildable = true;
        };
        "test-undefined-solve" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-solve-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-solve-plugin"))
          ];
          buildable = true;
        };
        "test-undefined-solve-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-solve-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-solve-plugin"))
          ];
          buildable = true;
        };
        "test-undefined-stop" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-stop-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-stop-plugin"))
          ];
          buildable = true;
        };
        "test-undefined-stop-carefree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.undefined-stop-plugin or (errorHandler.buildDepError "ghc-plugs-out:undefined-stop-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-pure-by-option" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-pure-by-pragma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-pure-by-both" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-impure-by-option" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-impure-by-pragma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-wireup-impure-by-both" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-counter-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-in-turn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-in-line" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-in-turn-each" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-in-line-each" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-counter-foo-bar-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
        "test-counter-foobar-main" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-plugs-out".components.sublibs.call-count-plugin or (errorHandler.buildDepError "ghc-plugs-out:call-count-plugin"))
          ];
          buildable = true;
        };
      };
    };
  }