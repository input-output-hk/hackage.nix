{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dump = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ghc-prof";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013-2016 Mitsutoshi Aoe";
        maintainer = "Mitsutoshi Aoe <maoe@foldr.in>";
        author = "Mitsutoshi Aoe";
        homepage = "https://github.com/maoe/ghc-prof";
        url = "";
        synopsis = "Library for parsing GHC time and allocation profiling reports";
        description = "Library for parsing GHC time and allocation profiling reports";
        buildType = "Simple";
      };
      components = {
        ghc-prof = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.containers
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          dump = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.ghc-prof
              hsPkgs.scientific
              hsPkgs.text
            ];
          };
        };
        tests = {
          regression = {
            depends  = [
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.ghc-prof
              hsPkgs.process
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.temporary
              hsPkgs.text
            ];
          };
        };
      };
    }