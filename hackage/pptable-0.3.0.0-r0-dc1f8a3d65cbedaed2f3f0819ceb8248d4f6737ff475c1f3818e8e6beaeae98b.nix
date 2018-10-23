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
        name = "pptable";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "2016 Guru Devanla";
      maintainer = "grdvnl@gmail.com";
      author = "Guru Devanla";
      homepage = "https://github.com/gdevanla/pptable#readme";
      url = "";
      synopsis = "Pretty Print containers in a tabular format";
      description = "When you are faced with tens of records data types contained in a list or similar structure if becomes difficult to view all records during iterative development. This library provides a generic funciton to print any such record types in a tabular format that makes visualizing the data more pleasing. Please see README.md for examples of this.";
      buildType = "Simple";
    };
    components = {
      "pptable" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.boxes)
          (hsPkgs.vector)
          (hsPkgs.generic-deriving)
        ];
      };
      tests = {
        "pptable-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pptable)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.boxes)
          ];
        };
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pptable)
            (hsPkgs.tasty)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.boxes)
            (hsPkgs.markdown-unlit)
          ];
        };
      };
    };
  }