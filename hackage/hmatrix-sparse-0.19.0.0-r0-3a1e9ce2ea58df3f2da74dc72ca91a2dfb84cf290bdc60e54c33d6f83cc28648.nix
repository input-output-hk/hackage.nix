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
      specVersion = "1.6";
      identifier = { name = "hmatrix-sparse"; version = "0.19.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Sparse linear solver";
      description = "Interface to MKL direct sparse linear solver";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        libs = [
          (pkgs."mkl_intel" or (errorHandler.sysDepError "mkl_intel"))
          (pkgs."mkl_sequential" or (errorHandler.sysDepError "mkl_sequential"))
          (pkgs."mkl_core" or (errorHandler.sysDepError "mkl_core"))
        ];
        buildable = true;
      };
    };
  }