{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.0";
      identifier = { name = "blas"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/blas";
      url = "";
      synopsis = "Bindings to the BLAS library";
      description = "The BLAS (Basic Linear Algebra Subprograms) are routines that provide\nstandard building blocks for performing basic vector and matrix operations.\nThe Level 1 BLAS perform scalar, vector and vector-vector operations, the\nLevel 2 BLAS perform matrix-vector operations, and the Level 3 BLAS perform\nmatrix-matrix operations. Because the BLAS are efficient, portable, and\nwidely available, they are commonly used in the development of high quality\nlinear algebra software, LAPACK for example.\n\nFor more information, see the Netlib BLAS webpage:\n<http://www.netlib.org/blas/>\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ieee" or ((hsPkgs.pkgs-errors).buildDepError "ieee"))
          (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        libs = [ (pkgs."blas" or ((hsPkgs.pkgs-errors).sysDepError "blas")) ];
        buildable = true;
        };
      };
    }