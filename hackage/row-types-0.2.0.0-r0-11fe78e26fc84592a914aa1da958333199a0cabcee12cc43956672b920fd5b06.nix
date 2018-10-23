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
        name = "row-types";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "daniel.winograd-cort@target.com, matthew.farkas-dyck@target.com";
      author = "Daniel Winograd-Cort, Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Open Records and Variants";
      description = "This package uses closed type families and type literals to implement open\nrecords and variants.\nThe core is based off of the <https://hackage.haskell.org/package/CTRex CTRex>\npackage, but it additionally includes polymorphic variants and a number of\nadditional functions.  That said, it is not a proper superset of CTRex as it\nspecifically forbids records from having more than one element of the same\nlabel.";
      buildType = "Simple";
    };
    components = {
      "row-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
        ];
      };
      benchmarks = {
        "perf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.row-types)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }