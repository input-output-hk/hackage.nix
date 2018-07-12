{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deepcontrol";
          version = "0.2.0.0";
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
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
          "UnitTest_Applicative" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
          "UnitTest_Monad" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
        };
      };
    }