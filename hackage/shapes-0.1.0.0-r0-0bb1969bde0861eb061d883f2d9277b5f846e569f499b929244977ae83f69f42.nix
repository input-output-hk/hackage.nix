{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shapes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Kynan Rilee";
      maintainer = "kynan.rilee@gmail.com";
      author = "Kynan Rilee";
      homepage = "https://github.com/ublubu/shapes#readme";
      url = "";
      synopsis = "physics engine and other tools for 2D shapes";
      description = "Please see the README on Github at <https://github.com/ublubu/shapes#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.either)
          (hsPkgs.ghc-prim)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.mtl)
          (hsPkgs.shapes-math)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          ];
        };
      exes = {
        "shapes-bench" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.mtl)
            (hsPkgs.shapes)
            (hsPkgs.shapes-math)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            ];
          };
        };
      tests = {
        "shapes-spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.either)
            (hsPkgs.ghc-prim)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.linear)
            (hsPkgs.mtl)
            (hsPkgs.shapes)
            (hsPkgs.shapes-math)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            ];
          };
        };
      };
    }