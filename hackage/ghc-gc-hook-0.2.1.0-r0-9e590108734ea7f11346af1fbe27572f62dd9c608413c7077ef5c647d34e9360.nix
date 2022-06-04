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
      specVersion = "2.0";
      identifier = { name = "ghc-gc-hook"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom@tomsmeding.com";
      author = "Tom Smeding";
      homepage = "";
      url = "";
      synopsis = "GHC garbage collection hook";
      description = "GHC exposes an API for calling a user-defined C function after every garbage\ncollection pass. This small library gives access to this source of\ninformation from Haskell in a bare-bones form; furthermore, it gives a small\nusability improvement for running your own function from C using the hook\nfrom this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-gc-hook" or (errorHandler.buildDepError "ghc-gc-hook"))
            (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
            ];
          buildable = true;
          };
        };
      };
    }