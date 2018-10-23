{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "qif";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "awick@uhsure.com";
      author = "Adam Wick";
      homepage = "https://github.com/acw/qif";
      url = "";
      synopsis = "A simple QIF file format parser / printer";
      description = "A handy little library for dealing with this awful little\nQIF files in your life.";
      buildType = "Simple";
    };
    components = {
      "qif" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "test-qif-serialization" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.qif)
          ];
        };
      };
    };
  }