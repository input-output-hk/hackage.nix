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
        name = "multilinear";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear#readme";
      url = "";
      synopsis = "Efficient (multi)linear algebra implementation";
      description = "Please see the README on GitHub at <https://github.com/ArturB/multilinear#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.statistics)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "multilinear-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.multilinear)
          ];
        };
      };
      benchmarks = {
        "multilinear-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.multilinear)
          ];
        };
      };
    };
  }