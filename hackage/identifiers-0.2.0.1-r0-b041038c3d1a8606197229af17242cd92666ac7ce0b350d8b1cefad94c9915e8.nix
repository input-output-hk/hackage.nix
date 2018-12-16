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
      specVersion = "1.10";
      identifier = {
        name = "identifiers";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awagner83@gmail.com";
      author = "Adam Wagner";
      homepage = "";
      url = "";
      synopsis = "Numeric identifiers for values.";
      description = "Useful for situations where repeated-storage requirements\nof values become too costly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "main" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.identifiers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "bench-builder-all" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.binary)
            (hsPkgs.deepseq)
            (hsPkgs.bytestring)
            (hsPkgs.identifiers)
          ];
        };
      };
    };
  }