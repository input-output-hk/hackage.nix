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
      identifier = { name = "unboxed-ref"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Winter 2017";
      maintainer = "drkoster@qq.com";
      author = "winter";
      homepage = "https://github.com/winterland1989/unboxed-ref";
      url = "";
      synopsis = "Fast unboxed references for ST and IO monad";
      description = "Fast unboxed references for ST and IO monad";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unboxed-ref" or (errorHandler.buildDepError "unboxed-ref"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }