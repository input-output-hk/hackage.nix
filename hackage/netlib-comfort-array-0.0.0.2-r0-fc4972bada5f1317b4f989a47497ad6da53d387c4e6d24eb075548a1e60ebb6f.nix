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
      specVersion = "1.12";
      identifier = { name = "netlib-comfort-array"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/netlib-comfort-array/";
      url = "";
      synopsis = "Helper modules for comfort-array wrappers to BLAS and LAPACK";
      description = "Netlib is a collection of packages for efficient numeric linear algebra.\nMost prominent parts of Netlib are BLAS and LAPACK.\nThese packages contain functions for matrix computations,\nsolution of simultaneous linear equations and eigenvalue problems.\n\nThis package provides definitions shared by\nthe packages @blas-comfort-array@ and @lapack-comfort-array@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."netlib-ffi" or (errorHandler.buildDepError "netlib-ffi"))
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }