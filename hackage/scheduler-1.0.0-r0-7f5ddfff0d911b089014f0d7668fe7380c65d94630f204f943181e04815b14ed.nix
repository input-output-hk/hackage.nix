{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scheduler"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/haskell-scheduler";
      url = "";
      synopsis = "Work stealing scheduler.";
      description = "A work stealing scheduler that is primarly developed for [massiv](https://github.com/lehins/massiv) array librarry, but it is general enough to be useful for any computation that fits the model of few workers many jobs.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.unliftio-core)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.scheduler)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.unliftio)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.scheduler)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }