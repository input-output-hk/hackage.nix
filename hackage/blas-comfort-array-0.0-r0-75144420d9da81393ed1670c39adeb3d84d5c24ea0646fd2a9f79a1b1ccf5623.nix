{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "blas-comfort-array"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/blas-comfort-array/";
      url = "";
      synopsis = "Auto-generated interface to Fortran BLAS via comfort-array";
      description = "BLAS is a package for efficient basic linear algebra operations.\nThe reference implementation is written in FORTRAN.\nThis is a semi-automatically generated mid-level wrapper.\nThe functions are not ready to use for high-level applications,\nbut they are a step closer.\n\nSee also package @lapack-comfort-array@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.blas-ffi)
          (hsPkgs.netlib-comfort-array)
          (hsPkgs.netlib-ffi)
          (hsPkgs.comfort-array)
          (hsPkgs.storable-complex)
          (hsPkgs.transformers)
          (hsPkgs.base)
          ];
        };
      };
    }