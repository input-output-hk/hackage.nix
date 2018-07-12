{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pg-store";
          version = "0.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ole Krüger 2015";
        maintainer = "Ole Krüger <ole@vprsm.de>";
        author = "Ole Krüger <ole@vprsm.de>";
        homepage = "https://github.com/vapourismo/pg-store";
        url = "";
        synopsis = "Simple storage interface to PostgreSQL";
        description = "Simple storage interface to PostgreSQL";
        buildType = "Simple";
      };
      components = {
        "pg-store" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.text
            hsPkgs.postgresql-libpq
            hsPkgs.attoparsec
            hsPkgs.mtl
            hsPkgs.time
            hsPkgs.haskell-src-meta
            hsPkgs.aeson
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.hashable
          ];
        };
        tests = {
          "entities" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pg-store
              hsPkgs.mtl
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.postgresql-libpq
              hsPkgs.scientific
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
      };
    }