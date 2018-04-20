{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mida";
          version = "0.4.5";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright © 2014, 2015 Mark Karpov";
        maintainer = "Mark Karpov";
        author = "Mark Karpov";
        homepage = "https://github.com/mrkkrp/mida";
        url = "";
        synopsis = "Language for algorithmic generation of MIDI files";
        description = "MIDA is a minimalistic language for algorithmic generation of MIDI\nfiles. MIDA is not interactive in sense that you cannot control result of\nits activity in real time, it is intended for producers and should be used\nwith a DAW. MIDA can help you create variative elements in your music in a\nvery simple way. Since MIDI can control a lot of different instruments,\npower of MIDA is truly great.\nMain reason for MIDA development is to create software tool that can be\nused in such a way that does not change established workflow, so people\ncould use familiar plugins and software instruments.\nThe core concept of MIDA is building systems with complex behaviors from\nvery basic and easy-to-understand elements and powerful means of their\ncomposition.\nCurrently MIDA can be used to translate source files into .mid files, and\nalso in interactive mode that will help you to understand how MIDA\nlanguage works.\nSee MIDA Manual for more information.";
        buildType = "Simple";
      };
      components = {
        mida = {
          depends  = [
            hsPkgs.HCodecs
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.megaparsec
            hsPkgs.mtl
            hsPkgs.random
            hsPkgs.text
            hsPkgs.tf-random
            hsPkgs.transformers
          ];
        };
        exes = {
          mida = {
            depends  = [
              hsPkgs.HCodecs
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.haskeline
              hsPkgs.megaparsec
              hsPkgs.mida
              hsPkgs.mtl
              hsPkgs.optparse-applicative
              hsPkgs.process
              hsPkgs.random
              hsPkgs.text
              hsPkgs.text-format
              hsPkgs.tf-random
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.HCodecs
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.megaparsec
              hsPkgs.mida
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.text
              hsPkgs.tf-random
              hsPkgs.transformers
            ];
          };
        };
      };
    }