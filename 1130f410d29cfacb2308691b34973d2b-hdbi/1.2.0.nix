{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hdbi";
          version = "1.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2005-2013 John Goerzen";
        maintainer = "Aleksey Uymanov <s9gf4ult@gmail.com>";
        author = "John Goerzen";
        homepage = "https://github.com/s9gf4ult/hdbi";
        url = "";
        synopsis = "Haskell Database Independent interface";
        description = "HDBI provides an abstraction layer between Haskell programs and SQL\nrelational databases. This lets you write database code once, in\nHaskell, and have it work with any number of backend SQL databases\n(MySQL, Oracle, PostgreSQL, ODBC-compliant databases, etc.)";
        buildType = "Simple";
      };
      components = {
        hdbi = {
          depends  = [
            hsPkgs.base
            hsPkgs.Decimal
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.old-locale
            hsPkgs.stm
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") hsPkgs.base;
        };
        tests = {
          sqlvalues = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.derive
              hsPkgs.old-locale
              hsPkgs.quickcheck-assertions
              hsPkgs.quickcheck-instances
              hsPkgs.template-haskell
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
          dummydriver = {
            depends  = [
              hsPkgs.base
              hsPkgs.Decimal
              hsPkgs.HUnit
              hsPkgs.attoparsec
              hsPkgs.blaze-builder
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.hspec-expectations
              hsPkgs.old-locale
              hsPkgs.stm
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.time
              hsPkgs.uuid
            ];
          };
        };
      };
    }