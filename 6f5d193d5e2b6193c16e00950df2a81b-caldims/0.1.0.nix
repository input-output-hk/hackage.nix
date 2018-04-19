{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "caldims";
          version = "0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2007 Marcel Manthe";
        maintainer = "Rick Kaudewitz <rick.kaudewitz@yahoo.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Calculation tool and library supporting units";
        description = "CalDims is an easy to use tool for defining functions and units\n(basic and derrived), so it can provide dimension-save calculation\n(not embedded but via shell).";
        buildType = "Simple";
      };
      components = {
        caldims = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.parsec
            hsPkgs.readline
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
          ];
        };
        exes = {
          caldims = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.parsec
              hsPkgs.readline
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.directory
            ];
          };
        };
      };
    }