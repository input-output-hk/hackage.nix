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
      specVersion = "1.2";
      identifier = { name = "blas"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://github.com/patperry/blas";
      url = "";
      synopsis = "Bindings to the BLAS library";
      description = "The BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ieee" or (errorHandler.buildDepError "ieee"))
          (hsPkgs."storable-complex" or (errorHandler.buildDepError "storable-complex"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
    };
  }