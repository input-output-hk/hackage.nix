{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fpnla";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Universidad de la República, Uruguay";
      maintainer = "Pablo Perdomo <pperdomo@fing.edu.uy>, Mauro Blanco <mblanco@fing.edu.uy>";
      author = "Mauro Blanco, Pablo Perdomo, Pablo Ezzatti, Alberto Pardo, Marcos Viera";
      homepage = "";
      url = "";
      synopsis = "A library for NLA operations";
      description = "\nThis package defines a framework for linear algebra operations, allowing:\n\n- Definition of multiple instances of BLAS and LAPACK operations.\n\n- Definition of multiple representations of vectors and matrices.\n\n- Arbitrary combination of strategies and structure representations.\n\n- Type-safe manipulation of context information associated to each strategy.\n\n- Definition of specialized strategies for a given representation.\n\nThe framework is based on BLAS (<http://www.netlib.org/blas/>) and LAPACK (<http://www.netlib.org/lapack/>) linear algebra libraries, as these are well known libraries in the area. For this reason the design of the framework is strongly oriented to these libraries. Anyway it is possible to easily define operations not considered in these libraries and still maintaining the above properties.\n\nMany representations and strategy definitions (from which many are parallel) can be found in the @fpnla-examples@ (<http://hackage.haskell.org/package/fpnla-examples>) package.\n\nDetails about the package may be found in the paper: Towards a functional run-time for dense NLA domain. In Proceedings of the 2Nd ACM SIGPLAN Workshop on\nFunctional High-performance Computing. New York, NY, USA. ACM, pages 85-96 (<http://www.fing.edu.uy/~mviera/papers/fhpc13.pdf>).\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }