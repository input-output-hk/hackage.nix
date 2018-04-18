{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pg-store";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ole Krüger 2015";
        maintainer = "Ole Krüger <ole@vprsm.de>";
        author = "Ole Krüger <ole@vprsm.de>";
        homepage = "https://github.com/vapourismo/pg-store";
        url = "";
        synopsis = "Dead simple storage interface to PostgreSQL";
        description = "Dead simple storage interface to PostgreSQL";
        buildType = "Simple";
      };
      components = {
        pg-store = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.postgresql-libpq
            hsPkgs.transformers
            hsPkgs.attoparsec
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.pg-store
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.postgresql-libpq
            ];
          };
        };
      };
    }