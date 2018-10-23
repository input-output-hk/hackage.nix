{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "haskell-mpfr";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (C) 2012-2015 Edward A. Kmett, Daniel G. Peebles, Ivo List";
      maintainer = "Ivo List <ivo.list@gmail.com>";
      author = "Edward A. Kmett, Daniel G. Peebles, Ivo List";
      homepage = "http://github.com/comius/haskell-mpfr";
      url = "";
      synopsis = "Correctly-rounded arbitrary-precision floating-point arithmetic";
      description = "This package imports functions from MPFR to Haskell in the same way as GMP is alreay imported.\nThis package should link correctly on either MacOS X or Linux with GHC 7.8.1 or later.\n";
      buildType = "Custom";
    };
    components = {
      "haskell-mpfr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.integer-gmp)
        ];
      };
    };
  }