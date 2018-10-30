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
        version = "0.4.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awagner83@gmail.com";
      author = "Adam Wagner";
      homepage = "";
      url = "";
      synopsis = "Numeric identifiers for values.";
      description = "This library allows you to turn costly repetitive values\ninto numbers in order to save memory.\nAn Identifiers value acts like a bi-directional map that\nallows you to effeciently toggle between a numeric key\nand the original value pushed into the map.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.ListLike)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.identifiers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
      benchmarks = {
        "identifiers-hashable" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.identifiers)
          ];
        };
        "identifiers-listlike" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.identifiers)
          ];
        };
      };
    };
  }