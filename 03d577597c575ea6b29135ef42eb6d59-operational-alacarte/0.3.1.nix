{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "operational-alacarte";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016 Emil Axelsson\nCopyright (c) 2015 Emil Axelsson, Heinrich Apfelmus";
        maintainer = "78emil@gmail.com";
        author = "Emil Axelsson";
        homepage = "https://github.com/emilaxelsson/operational-alacarte";
        url = "";
        synopsis = "A version of Operational suitable for extensible EDSLs";
        description = "A version of Operational \\[1\\] suitable for EDSLs\nextensible via data types à la carte.\n\nThis library provides two important extensions to\nOperational:\n\n1. The ability for instructions to refer to sub-programs in\na generic way. (This is a key to obtaining an extensible\nlibrary.)\n\n2. Generic interpretation of programs, including\nsub-programs and other sub-structures (e.g.\nexpressions).\n\nMore information is found in the documentation of\n\"Control.Monad.Operational.Higher\".\n\n\\[1\\] <http://hackage.haskell.org/package/operational>";
        buildType = "Simple";
      };
      components = {
        operational-alacarte = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          Examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.operational-alacarte
            ];
          };
        };
      };
    }