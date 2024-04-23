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
      identifier = { name = "incipit-core"; version = "0.1.0.3"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2022 Torsten Schmits";
      maintainer = "haskell@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/incipit#readme";
      url = "";
      synopsis = "A Prelude for Polysemy";
      description = "See <https://hackage.haskell.org/package/incipit/docs/Incipit.html>";
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