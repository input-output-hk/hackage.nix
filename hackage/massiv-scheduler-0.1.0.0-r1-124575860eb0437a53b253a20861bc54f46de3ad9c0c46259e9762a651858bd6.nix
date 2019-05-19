{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "massiv-scheduler"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Work stealing scheduler for Massiv (Массив) and other parallel applications.";
      description = "A work stealing scheduler that is used by [massiv](https://www.stackage.org/package/massiv) array librarry, but can be useful for any other library or application that fits such model of computation.";
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
            (hsPkgs.massiv-scheduler)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.massiv-scheduler)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }