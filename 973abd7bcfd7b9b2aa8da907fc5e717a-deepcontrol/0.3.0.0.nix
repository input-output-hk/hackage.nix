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
      specVersion = "1.10";
      identifier = {
        name = "deepcontrol";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "KONISHI Yohsuke";
      maintainer = "ocean0yohsuke@gmail.com";
      author = "KONISHI Yohsuke";
      homepage = "https://github.com/ocean0yohsuke/deepcontrol";
      url = "";
      synopsis = "Enable more deeper level style of programming than the usual Control.xxx modules express";
      description = "This module enables more deeper level style of programming than the usual Control.xxx modules provides, especially for Applicative and Monad.";
      buildType = "Simple";
    };
    components = {
      "deepcontrol" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mmorph)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.QuickCheck)
          ];
        };
        "UnitTest_Applicative" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_Commutative" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_Monad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.deepcontrol)
            (hsPkgs.mtl)
            (hsPkgs.safe)
          ];
        };
        "UnitTest_Monad-Level1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_Monad-Level2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_Monad-Level2-2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_MonadMorph" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.deepcontrol)
          ];
        };
        "UnitTest_MonadMorph-Level1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.deepcontrol)
          ];
        };
      };
    };
  }