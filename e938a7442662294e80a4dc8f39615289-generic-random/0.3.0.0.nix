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
        name = "generic-random";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "http://github.com/lysxia/generic-random";
      url = "";
      synopsis = "Generic random generators";
      description = "Please see the README.";
      buildType = "Simple";
    };
    components = {
      "generic-random" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.ieee754)
          (hsPkgs.ad)
          (hsPkgs.hmatrix)
          (hsPkgs.vector)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.MonadRandom)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "test-tree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.generic-random)
          ];
        };
      };
      benchmarks = {
        "bench-binarytree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.generic-random)
          ];
        };
      };
    };
  }