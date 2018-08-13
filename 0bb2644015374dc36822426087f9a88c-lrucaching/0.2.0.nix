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
        name = "lrucaching";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/lrucaching#readme";
      url = "";
      synopsis = "LRU cache";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "lrucaching" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.psqueues)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "lru-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.lrucaching)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }