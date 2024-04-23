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
      identifier = { name = "hmatrix-banded"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/hmatrix-banded/";
      url = "";
      synopsis = "HMatrix interface to LAPACK functions for banded matrices";
      description = "HMatrix interface to LAPACK functions for banded matrices";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        libs = [ (pkgs."lapack" or (errorHandler.sysDepError "lapack")) ];
        buildable = true;
      };
    };
  }