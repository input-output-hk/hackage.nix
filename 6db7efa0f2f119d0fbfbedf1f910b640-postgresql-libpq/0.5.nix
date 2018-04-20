{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "postgresql-libpq";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leon@melding-monads.com";
        author = "Grant Monroe, Leon P Smith";
        homepage = "http://github.com/lpsmith/haskell-libpq";
        url = "";
        synopsis = "libpq binding for Haskell";
        description = "This is a binding to libpq: the C application\nprogrammer's interface to PostgreSQL. libpq is a\nset of library functions that allow client\nprograms to pass queries to the PostgreSQL\nbackend server and to receive the results of\nthese queries.";
        buildType = "Custom";
      };
      components = {
        postgresql-libpq = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
          ];
          libs = [ pkgs.pq ];
        };
      };
    }