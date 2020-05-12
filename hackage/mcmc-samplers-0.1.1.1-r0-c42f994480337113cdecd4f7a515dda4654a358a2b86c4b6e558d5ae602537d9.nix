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
      identifier = { name = "mcmc-samplers"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pravnar@indiana.edu";
      author = "Praveen Narayanan";
      homepage = "";
      url = "";
      synopsis = "Combinators for MCMC sampling";
      description = "A library of combinators to build transition kernels, proposal distributions, target distributions, and stream operations for MCMC sampling.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hakaru" or (errorHandler.buildDepError "hakaru"))
          ];
        buildable = true;
        };
      };
    }