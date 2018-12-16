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
        name = "boltzmann-samplers";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/boltzmann-samplers#readme";
      url = "";
      synopsis = "Uniform random generators";
      description = "Random generators with a uniform distribution conditioned\nto a given size.\nSee also @<http://hackage.haskell.org/package/testing-feat testing-feat>@,\nwhich is currently a faster method with similar results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ad)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.hmatrix)
          (hsPkgs.ieee754)
          (hsPkgs.unordered-containers)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-tree" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.optparse-generic)
            (hsPkgs.boltzmann-samplers)
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
            (hsPkgs.boltzmann-samplers)
          ];
        };
      };
    };
  }