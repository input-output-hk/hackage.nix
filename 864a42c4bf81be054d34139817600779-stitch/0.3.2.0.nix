{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stitch";
        version = "0.3.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "© Fraser Murray 2015";
      maintainer = "fraser.m.murray@gmail.com";
      author = "Fraser Murray";
      homepage = "";
      url = "";
      synopsis = "lightweight CSS DSL";
      description = "a tiny css preprocessor dsl for haskell – check out the readme at <https://github.com/intolerable/stitch>";
      buildType = "Simple";
    };
    components = {
      "stitch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.stitch)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stitch)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }