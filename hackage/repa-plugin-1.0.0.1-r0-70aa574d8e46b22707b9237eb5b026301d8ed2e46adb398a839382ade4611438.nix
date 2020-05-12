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
      specVersion = "1.10";
      identifier = { name = "repa-plugin"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The DPH Team";
      homepage = "";
      url = "";
      synopsis = "Data Flow Fusion GHC Plugin.";
      description = "This GHC plugin implements Data Flow Fusion as described in the paper:\nData Flow Fusion with Series Expressions in Haskell, Haskell Symposium 2013.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
          (hsPkgs."ddc-core-flow" or (errorHandler.buildDepError "ddc-core-flow"))
          (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
          ];
        buildable = true;
        };
      };
    }