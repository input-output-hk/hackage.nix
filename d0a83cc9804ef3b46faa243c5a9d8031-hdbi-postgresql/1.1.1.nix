{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdbi-postgresql";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2013 John Goerzen";
        maintainer = "Aleksey Uymanov <s9gf4ult@gmail.com>";
        author = "John Goerzen";
        homepage = "https://github.com/s9gf4ult/hdbi-postgresql";
        url = "";
        synopsis = "PostgreSQL driver for hdbi";
        description = "This package provides a PostgreSQL driver for hdbi";
        buildType = "Simple";
      };
      components = {
        "hdbi-postgresql" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.hdbi
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.postgresql-libpq
            hsPkgs.postgresql-simple
            hsPkgs.safe
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.base;
        };
        tests = {
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hdbi
              hsPkgs.hdbi-tests
              hsPkgs.ieee754
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.postgresql-libpq
              hsPkgs.postgresql-simple
              hsPkgs.quickcheck-assertions
              hsPkgs.quickcheck-instances
              hsPkgs.safe
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
          "puretests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.derive
              hsPkgs.hdbi
              hsPkgs.mtl
              hsPkgs.old-locale
              hsPkgs.postgresql-libpq
              hsPkgs.postgresql-simple
              hsPkgs.quickcheck-assertions
              hsPkgs.quickcheck-instances
              hsPkgs.safe
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
        };
      };
    }