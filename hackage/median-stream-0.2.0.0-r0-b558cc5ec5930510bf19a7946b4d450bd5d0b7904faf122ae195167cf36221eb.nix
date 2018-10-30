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
        name = "median-stream";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Joe Canero";
      maintainer = "jmc41493@gmail.com";
      author = "Joe Canero";
      homepage = "https://github.com/caneroj1/median-stream#readme";
      url = "";
      synopsis = "Constant-time queries for the median of a stream of numeric\ndata.";
      description = "Uses the two-heap approach to support O(lg n) insertions\nand O(1) queries for the median.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.heap)
        ];
      };
      tests = {
        "median-stream-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.median-stream)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }