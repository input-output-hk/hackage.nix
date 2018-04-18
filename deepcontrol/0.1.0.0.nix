{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "deepcontrol";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "KONISHI Yohsuke";
        maintainer = "ocean0yohsuke@gmail.com";
        author = "KONISHI Yohsuke";
        homepage = "https://github.com/ocean0yohsuke/deepcontrol";
        url = "";
        synopsis = "Enable deeper level style of programming than the usual control provides";
        description = "This module enables deeper level style of programming than the usual control provides, especially for Applicative and Monad.";
        buildType = "Simple";
      };
      components = {
        deepcontrol = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.QuickCheck
            ];
          };
          UnitTest_Applicative = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
          UnitTest_Monad = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.deepcontrol
            ];
          };
        };
      };
    }