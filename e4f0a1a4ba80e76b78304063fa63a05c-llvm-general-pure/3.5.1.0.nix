{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "llvm-general-pure";
        version = "3.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Benjamin S. Scarlet and Google Inc.";
      maintainer = "Benjamin S. Scarlet <fgthb0@greynode.net>";
      author = "Benjamin S.Scarlet <fgthb0@greynode.net>";
      homepage = "http://github.com/bscarlet/llvm-general/";
      url = "";
      synopsis = "Pure Haskell LLVM functionality (no FFI).";
      description = "llvm-general-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.\nIt includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-general package\nbuilds on this one with FFI bindings to LLVM, but llvm-general-pure does not require LLVM to be available.";
      buildType = "Simple";
    };
    components = {
      "llvm-general-pure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.setenv)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.llvm-general-pure)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }