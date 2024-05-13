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
    flags = { fast = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "criterion-measurement"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2009-2016 Bryan O'Sullivan and others";
      maintainer = "Marco Zocca <zocca.marco gmail>, Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/haskell/criterion";
      url = "";
      synopsis = "Criterion measurement functionality and associated types";
      description = "Measurement-related functionality extracted from Criterion, with minimal dependencies. The rationale for this is to enable alternative analysis front-ends.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }