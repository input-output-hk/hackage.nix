{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      semigroups = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "llvm-hs-pure";
          version = "5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Benjamin S. Scarlet and Google Inc.";
        maintainer = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>";
        author = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>, Benjamin S. Scarlet";
        homepage = "http://github.com/llvm-hs/llvm-hs/";
        url = "";
        synopsis = "Pure Haskell LLVM functionality (no FFI).";
        description = "llvm-hs-pure is a set of pure Haskell types and functions for interacting with LLVM <http://llvm.org/>.\nIt includes an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>). The llvm-hs package\nbuilds on this one with FFI bindings to LLVM, but llvm-hs-pure does not require LLVM to be available.";
        buildType = "Simple";
      };
      components = {
        "llvm-hs-pure" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.fail
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.unordered-containers
          ] ++ (if _flags.semigroups
            then [
              hsPkgs.base
              hsPkgs.semigroups
            ]
            else [ hsPkgs.base ]);
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.llvm-hs-pure
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.mtl
            ] ++ (if _flags.semigroups
              then [
                hsPkgs.base
                hsPkgs.semigroups
              ]
              else [ hsPkgs.base ]);
          };
          "test-irbuilder" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.llvm-hs-pure
              hsPkgs.mtl
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }