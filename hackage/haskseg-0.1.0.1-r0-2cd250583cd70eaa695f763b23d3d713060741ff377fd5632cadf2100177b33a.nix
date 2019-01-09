{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskseg"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tom Lippincott";
      maintainer = "tom@cs.jhu.edu";
      author = "Tom Lippincott";
      homepage = "https://github.com/githubuser/haskseg#readme";
      url = "";
      synopsis = "Simple unsupervised segmentation model";
      description = "Implementation of the non-parametric segmentation model described in \"Type-based MCMC\" (Liang, Jordan, and Klein, 2010).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadRandom)
          (hsPkgs.ansi-terminal)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exact-combinatorics)
          (hsPkgs.logging-effect)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.optparse-generic)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.zlib)
          ];
        };
      exes = {
        "haskseg" = {
          depends = [
            (hsPkgs.MonadRandom)
            (hsPkgs.ansi-terminal)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exact-combinatorics)
            (hsPkgs.haskseg)
            (hsPkgs.logging-effect)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.zlib)
            ];
          };
        };
      };
    }