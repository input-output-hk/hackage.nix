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
      specVersion = "3.4";
      identifier = { name = "derive-prim"; version = "0.1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "";
      maintainer = "hoanghung17jan@gmail.com";
      author = "k355l3r-5yndr0m3";
      homepage = "https://github.com/k355l3r-5yndr0m3/derive-prim";
      url = "";
      synopsis = "Derive Prim and PrimUnaligned";
      description = "This package provides the newtype `GenericPrim` which allows user to derive instances for Prim and PrimUnaligned\nthrough the DerivingVia extension.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-unaligned" or (errorHandler.buildDepError "primitive-unaligned"))
        ];
        buildable = true;
      };
      tests = {
        "derive-prim-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."primitive-unaligned" or (errorHandler.buildDepError "primitive-unaligned"))
            (hsPkgs."derive-prim" or (errorHandler.buildDepError "derive-prim"))
          ];
          buildable = true;
        };
      };
    };
  }