{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cassava";
        version = "0.4.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Johan Tibell\n(c) 2012 Bryan O'Sullivan\n(c) 2011 MailRank, Inc.";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell";
      homepage = "https://github.com/tibbe/cassava";
      url = "";
      synopsis = "A CSV parsing and encoding library";
      description = "A CSV parsing and encoding library optimized for ease of use and high\nperformance.";
      buildType = "Simple";
    };
    components = {
      "cassava" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1") (hsPkgs.ghc-prim);
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lazy-csv)
            (hsPkgs.text)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.2.1") (hsPkgs.ghc-prim);
        };
      };
    };
  }