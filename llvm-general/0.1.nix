{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "llvm-general";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Benjamin S. Scarlet 2013";
        maintainer = "Benjamin S. Scarlet <fgthb0@greynode.net>";
        author = "Benjamin S.Scarlet <fgthb0@greynode.net>";
        homepage = "";
        url = "";
        synopsis = "General purpose LLVM bindings";
        description = "llvm-general is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,\nit uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it\nhandles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not\nonly from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.";
        buildType = "Custom";
      };
      components = {
        llvm-general = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.array
            hsPkgs.setenv
          ];
          libs = [
            pkgs."LLVM-3.2svn"
            pkgs."stdc++"
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.llvm-general
              hsPkgs.containers
            ];
          };
        };
      };
    }