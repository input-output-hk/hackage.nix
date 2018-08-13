{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "netlib-carray";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/netlib-carray/";
      url = "";
      synopsis = "Helper modules for CArray wrappers to BLAS and LAPACK";
      description = "Netlib is a collection of packages for efficient numeric linear algebra.\nMost prominent parts of Netlib are BLAS and LAPACK.\nThese packages contain functions for matrix computations,\nsolution of simultaneous linear equations and eigenvalue problems.\n\nThis package provides definitions shared by\nthe packages @blas-carray@ and @lapack-carray@.";
      buildType = "Simple";
    };
    components = {
      "netlib-carray" = {
        depends  = [
          (hsPkgs.netlib-ffi)
          (hsPkgs.carray)
          (hsPkgs.transformers)
          (hsPkgs.base)
        ];
      };
    };
  }