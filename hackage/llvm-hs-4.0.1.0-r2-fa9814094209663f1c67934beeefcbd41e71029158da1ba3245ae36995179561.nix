{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      shared-llvm = true;
      debug = false;
      semigroups = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "llvm-hs";
        version = "4.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Benjamin S. Scarlet and Google Inc.";
      maintainer = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>";
      author = "Anthony Cowley, Stephen Diehl, Moritz Kiefer <moritz.kiefer@purelyfunctional.org>, Benjamin S. Scarlet";
      homepage = "http://github.com/llvm-hs/llvm-hs/";
      url = "";
      synopsis = "General purpose LLVM bindings";
      description = "llvm-hs is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,\nit uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it\nhandles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not\nonly from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.";
      buildType = "Custom";
    };
    components = {
      "llvm-hs" = {
        depends  = [
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.array)
          (hsPkgs.llvm-hs-pure)
        ] ++ (if flags.semigroups
          then [
            (hsPkgs.base)
            (hsPkgs.semigroups)
          ]
          else [ (hsPkgs.base) ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.llvm-hs)
            (hsPkgs.llvm-hs-pure)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.temporary)
            (hsPkgs.pretty-show)
          ] ++ (if flags.semigroups
            then [
              (hsPkgs.base)
              (hsPkgs.semigroups)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }