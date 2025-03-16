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
      specVersion = "2.2";
      identifier = { name = "incipit-core"; version = "0.6.1.1"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2025 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/incipit-core#readme";
      url = "";
      synopsis = "A Prelude for Polysemy";
      description = "See https://hackage.haskell.org/package/incipit-core/docs/IncipitCore.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."incipit-base" or (errorHandler.buildDepError "incipit-base"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
        ];
        buildable = true;
      };
    };
  }