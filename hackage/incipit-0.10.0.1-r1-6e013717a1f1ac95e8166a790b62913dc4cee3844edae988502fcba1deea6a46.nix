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
      identifier = { name = "incipit"; version = "0.10.0.1"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2025 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/incipit#readme";
      url = "";
      synopsis = "A Prelude for Polysemy";
      description = "See https://hackage.haskell.org/package/incipit/docs/Incipit.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."incipit-core" or (errorHandler.buildDepError "incipit-core"))
          (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
          (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
          (hsPkgs."polysemy-resume" or (errorHandler.buildDepError "polysemy-resume"))
          (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
        ];
        buildable = true;
      };
    };
  }