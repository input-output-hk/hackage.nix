{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hdbi";
        version = "1.0.0";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Decimal)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.old-locale)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9") (hsPkgs.base);
      };
      tests = {
        "sqlvalues" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Decimal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.old-locale)
            (hsPkgs.quickcheck-assertions)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uuid)
          ];
        };
        "dummydriver" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Decimal)
            (hsPkgs.HUnit)
            (hsPkgs.attoparsec)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.hspec-expectations)
            (hsPkgs.old-locale)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uuid)
          ];
        };
      };
    };
  }