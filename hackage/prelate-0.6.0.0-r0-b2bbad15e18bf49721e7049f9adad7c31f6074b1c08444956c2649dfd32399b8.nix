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
      identifier = { name = "prelate"; version = "0.6.0.0"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2023 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/prelate#readme";
      url = "";
      synopsis = "A Prelude";
      description = "See https://hackage.haskell.org/package/prelate/docs/Prelate.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."incipit" or (errorHandler.buildDepError "incipit"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (errorHandler.buildDepError "microlens-ghc"))
          (hsPkgs."polysemy-chronos" or (errorHandler.buildDepError "polysemy-chronos"))
          (hsPkgs."polysemy-conc" or (errorHandler.buildDepError "polysemy-conc"))
          (hsPkgs."polysemy-log" or (errorHandler.buildDepError "polysemy-log"))
          (hsPkgs."polysemy-process" or (errorHandler.buildDepError "polysemy-process"))
          (hsPkgs."polysemy-resume" or (errorHandler.buildDepError "polysemy-resume"))
          (hsPkgs."polysemy-time" or (errorHandler.buildDepError "polysemy-time"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."zeugma" or (errorHandler.buildDepError "zeugma"))
          ];
        buildable = true;
        };
      };
    }