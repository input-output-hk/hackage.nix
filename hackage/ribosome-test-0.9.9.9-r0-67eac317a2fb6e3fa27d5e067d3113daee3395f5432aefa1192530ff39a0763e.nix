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
      identifier = { name = "ribosome-test"; version = "0.9.9.9"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2022 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "";
      url = "";
      synopsis = "Test tools for Ribosome";
      description = "See https://hackage.haskell.org/package/ribosome-test/docs/Ribosome-Test.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."chiasma" or (errorHandler.buildDepError "chiasma"))
          (hsPkgs."chiasma-test" or (errorHandler.buildDepError "chiasma-test"))
          (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."lens-regex-pcre" or (errorHandler.buildDepError "lens-regex-pcre"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-chronos" or (errorHandler.buildDepError "polysemy-chronos"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
          (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
          (hsPkgs."ribosome" or (errorHandler.buildDepError "ribosome"))
          (hsPkgs."ribosome-host" or (errorHandler.buildDepError "ribosome-host"))
          (hsPkgs."ribosome-host-test" or (errorHandler.buildDepError "ribosome-host-test"))
        ];
        buildable = true;
      };
      tests = {
        "ribosome-test-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-test" or (errorHandler.buildDepError "polysemy-test"))
            (hsPkgs."prelate" or (errorHandler.buildDepError "prelate"))
            (hsPkgs."ribosome" or (errorHandler.buildDepError "ribosome"))
            (hsPkgs."ribosome-host" or (errorHandler.buildDepError "ribosome-host"))
            (hsPkgs."ribosome-test" or (errorHandler.buildDepError "ribosome-test"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          ];
          buildable = true;
        };
      };
    };
  }