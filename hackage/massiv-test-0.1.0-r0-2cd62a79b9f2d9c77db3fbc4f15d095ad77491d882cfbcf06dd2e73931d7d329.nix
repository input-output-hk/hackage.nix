{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "massiv-test"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Library that contains generators, properties and tests for Massiv Array Library.";
      description = "This library is designed for users of massiv library that need random generators for writing custom property tests and reusing some of the predefined ones.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.QuickCheck)
          (hsPkgs.hspec)
          (hsPkgs.massiv)
          (hsPkgs.scheduler)
          (hsPkgs.primitive)
          (hsPkgs.unliftio)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.massiv)
            (hsPkgs.massiv-test)
            (hsPkgs.hspec)
            (hsPkgs.scheduler)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }