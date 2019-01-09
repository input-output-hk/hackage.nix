{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { unsafe-operations = true; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "parameterized-utils"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jhendrix@galois.com";
      author = "Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "Classes and data structures for working with data-kind indexed types";
      description = "This packages contains collection classes and type representations\nused for working with values that have a single parameter.  It's\nintended for things like expression libraries where one wishes\nto leverage the Haskell type-checker to improve type-safety by encoding\nthe object language type system into data kinds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.th-abstraction)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "parameterizedTests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.ghc-prim)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parameterized-utils)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }