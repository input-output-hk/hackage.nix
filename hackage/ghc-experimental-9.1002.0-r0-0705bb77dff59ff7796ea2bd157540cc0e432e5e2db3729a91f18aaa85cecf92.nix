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
      identifier = { name = "ghc-experimental"; version = "9.1002.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 The GHC Team";
      maintainer = "ghc-devs@haskell.org";
      author = "The GHC Team";
      homepage = "https://www.haskell.org/ghc/";
      url = "";
      synopsis = "Experimental features of GHC's standard library";
      description = "This package is where experimental GHC standard library interfaces start\nlife and mature. Eventually, stabilized interfaces will be\nmigrated into the @base@ library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-internal" or (errorHandler.buildDepError "ghc-internal"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }