{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.14";
        identifier = {
          name = "lapack-ffi-tools";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann <haskell@henning-thielemann.de>";
        homepage = "http://hub.darcs.net/thielema/lapack-ffi-tools/";
        url = "";
        synopsis = "Generator for Haskell interface to Fortran LAPACK";
        description = "LAPACK is a package for efficient numerically robust linear algebra.\nThe original implementation is written in FORTRAN.\n\nThe program in this package generates the modules\nfor the packages @blas-ffi@, @blas-carray@, @lapack-ffi@, @lapack-carray@\nfrom the FORTRAN source files.";
        buildType = "Simple";
      };
      components = {
        exes = {
          create-lapack-ffi-single = {
            depends  = [
              hsPkgs.parsec
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          create-lapack-ffi = {
            depends  = [
              hsPkgs.cassava
              hsPkgs.optparse-applicative
              hsPkgs.parsec
              hsPkgs.explicit-exception
              hsPkgs.transformers
              hsPkgs.pathtype
              hsPkgs.unordered-containers
              hsPkgs.containers
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.non-empty
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
          create-lapack-csv = {
            depends  = [
              hsPkgs.filepath
              hsPkgs.containers
              hsPkgs.utility-ht
              hsPkgs.base
            ];
          };
        };
      };
    }