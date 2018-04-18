{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deepcontrol";
          version = "0.5.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 KONISHI Yohsuke";
        maintainer = "ocean0yohsuke@gmail.com";
        author = "KONISHI Yohsuke";
        homepage = "https://github.com/ocean0yohsuke/deepcontrol";
        url = "";
        synopsis = "A library that provides deep-level programming style and(or) notation on Applicative and Monad";
        description = "This module provides much deeper level style of programming than the usual Applicative and Monad modules express.";
        buildType = "Simple";
      };
      components = {
        deepcontrol = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.transformers
          ];
        };
        tests = {
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
          unit_Applicative = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
          unit_Traversable = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
          unit_Monad = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
              hsPkgs.mtl
              hsPkgs.safe
            ];
          };
          unit_Monad-Level1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.deepcontrol
            ];
          };
          unit_Monad-Level2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
          unit_Monad-factorial = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
          unit_Monad-factorial2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
          unit_MonadTrans-ackermann = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
          unit_MonadTrans = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.deepcontrol
            ];
          };
          unit_MonadMorph = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.deepcontrol
            ];
          };
          unit_MonadMorph-bind = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
          unit_MonadMorph-bind2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.deepcontrol
            ];
          };
        };
      };
    }