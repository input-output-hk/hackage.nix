{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pseudo-boolean";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai";
        homepage = "https://github.com/msakai/pseudo-boolean";
        url = "";
        synopsis = "Reading/Writing OPB/WBO files used in pseudo boolean competition";
        description = "Reading\\/Writing OPB\\/WBO files used in pseudo boolean competition";
        buildType = "Simple";
      };
      components = {
        "pseudo-boolean" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.bytestring-builder
            hsPkgs.dlist
            hsPkgs.attoparsec
            hsPkgs.deepseq
            hsPkgs.hashable
          ];
        };
        tests = {
          "TestPBFile" = {
            depends  = [
              hsPkgs.pseudo-boolean
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.temporary
            ];
          };
        };
      };
    }