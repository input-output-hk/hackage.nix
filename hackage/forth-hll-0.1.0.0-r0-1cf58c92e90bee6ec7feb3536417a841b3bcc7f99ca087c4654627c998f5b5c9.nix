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
      specVersion = "1.8";
      identifier = { name = "forth-hll"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "tikhon@jelv.is";
      author = "Tikhon Jelvis <tikhon@jelv.is>";
      homepage = "";
      url = "";
      synopsis = "A simple eDSL for generating arrayForth code.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array-forth" or (errorHandler.buildDepError "array-forth"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }