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
      specVersion = "1.22";
      identifier = { name = "polysemy-optics"; version = "0.1.0.2"; };
      license = "BSD-2-Clause";
      copyright = "2022 Nicholas Coltharp";
      maintainer = "coltharp@pdx.edu";
      author = "Nicholas Coltharp";
      homepage = "";
      url = "";
      synopsis = "Optics for Polysemy.";
      description = "Optics for interfacing with Reader, State, and Writer effects in Polysemy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-zoo" or (errorHandler.buildDepError "polysemy-zoo"))
        ];
        buildable = true;
      };
    };
  }