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
        name = "stochastic";
        version = "0.1.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hackage@mail.kevinl.io";
      author = "Kevin Li";
      homepage = "http://kevinl.io/posts/2016-08-24-sampling-monad.html";
      url = "";
      synopsis = "Monadic composition of probabilistic functions and sampling.";
      description = "This package allows the user to perform monadic composition of\nprobabilistic functions (i.e. functions that take values\nand return distributions over values). These functions\ncan then be sampled from to generate datapoints.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "shadyGambler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.containers)
          ];
        };
        "monadLaws" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
          ];
        };
        "normal3" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
          ];
        };
        "normal10" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
          ];
        };
        "chart" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
            (hsPkgs.Chart-cairo)
            (hsPkgs.Chart)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "coolCharts" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
            (hsPkgs.Chart-cairo)
            (hsPkgs.Chart)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "swindler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.containers)
            (hsPkgs.random)
          ];
        };
        "montyHall" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.mtl)
          ];
        };
        "contrivedGambler" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
            (hsPkgs.Chart-cairo)
            (hsPkgs.Chart)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
        "beta" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stochastic)
            (hsPkgs.random)
            (hsPkgs.Chart-cairo)
            (hsPkgs.Chart)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }