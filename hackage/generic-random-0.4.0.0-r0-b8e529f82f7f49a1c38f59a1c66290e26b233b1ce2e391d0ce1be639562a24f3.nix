{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "generic-random";
        version = "0.4.0.0";
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
      "library" = {
        depends = [
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
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.optparse-generic)
            (hsPkgs.generic-random)
          ];
        };
      };
      benchmarks = {
        "bench-binarytree" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.testing-feat)
            (hsPkgs.generic-random)
          ];
        };
      };
    };
  }