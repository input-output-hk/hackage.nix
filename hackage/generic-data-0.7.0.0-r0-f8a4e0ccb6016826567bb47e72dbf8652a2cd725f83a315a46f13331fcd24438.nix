{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-data"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "2018 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "https://github.com/Lysxia/generic-data#readme";
      url = "";
      synopsis = "Deriving instances with GHC.Generics and related utilities";
      description = "Generic implementations of standard type classes.\nOperations on generic representations to help using \"GHC.Generics\".\nSee README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base-orphans)
          (hsPkgs.contravariant)
          (hsPkgs.show-combinators)
          (hsPkgs.base)
          ];
        };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.base)
            ];
          };
        "record-test" = { depends = [ (hsPkgs.generic-data) (hsPkgs.base) ]; };
        "example-test" = { depends = [ (hsPkgs.generic-data) (hsPkgs.base) ]; };
        "microsurgery-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.base)
            ];
          };
        "lens-surgery-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.generic-lens)
            (hsPkgs.base)
            ];
          };
        "one-liner-surgery-test" = {
          depends = [
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.generic-data)
            (hsPkgs.generic-lens)
            (hsPkgs.one-liner)
            (hsPkgs.base)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.generic-data)
            (hsPkgs.base)
            ];
          };
        };
      };
    }