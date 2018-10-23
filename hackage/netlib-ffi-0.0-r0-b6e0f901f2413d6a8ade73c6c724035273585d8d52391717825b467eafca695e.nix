{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "netlib-ffi";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/netlib-ffi/";
      url = "";
      synopsis = "Helper modules for FFI to BLAS and LAPACK";
      description = "Netlib is a collection of packages for efficient numeric linear algebra.\nMost prominent parts of Netlib are BLAS and LAPACK.\nThese packages contain functions for matrix computations,\nsolution of simultaneous linear equations and eigenvalue problems.\n\nThis package provides definitions shared by\nthe packages @blas-ffi@ and @lapack-ffi@.";
      buildType = "Simple";
    };
    components = {
      "netlib-ffi" = {
        depends  = [
          (hsPkgs.transformers)
          (hsPkgs.base)
        ];
      };
    };
  }