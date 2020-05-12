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
      identifier = { name = "strict-tuple-lens"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Emily Pillmore";
      maintainer = "emilypi@cohomolo.gy";
      author = "Emily Pillmore";
      homepage = "https://github.com/emilypi/strict-tuple-lens";
      url = "";
      synopsis = "Optics for the `strict-tuple` library";
      description = "This package provides optics for the `strict-tuple` library, using the `lens` library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."strict-tuple" or (errorHandler.buildDepError "strict-tuple"))
          ];
        buildable = true;
        };
      };
    }