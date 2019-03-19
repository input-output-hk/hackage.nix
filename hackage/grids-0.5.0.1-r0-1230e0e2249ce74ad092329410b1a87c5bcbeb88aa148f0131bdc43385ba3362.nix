{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "grids"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/grids#readme";
      url = "";
      synopsis = "";
      description = "Arbitrary sized type-safe grids with useful combinators";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.deepseq)
          (hsPkgs.distributive)
          (hsPkgs.singletons)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs.adjunctions)
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.deepseq)
            (hsPkgs.distributive)
            (hsPkgs.grids)
            (hsPkgs.hspec)
            (hsPkgs.singletons)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "stat" = {
          depends = [
            (hsPkgs.adjunctions)
            (hsPkgs.base)
            (hsPkgs.comonad)
            (hsPkgs.deepseq)
            (hsPkgs.distributive)
            (hsPkgs.gauge)
            (hsPkgs.grids)
            (hsPkgs.singletons)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }