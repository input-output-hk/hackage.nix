{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafe-checks = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "massiv"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Massiv (Массив) is an Array Library.";
      description = "Multi-dimensional Arrays with fusion, stencils and parallel computation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.scheduler)
          (hsPkgs.primitive)
          (hsPkgs.unliftio-core)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.massiv)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.unliftio)
            (hsPkgs.vector)
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
            (hsPkgs.massiv)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }