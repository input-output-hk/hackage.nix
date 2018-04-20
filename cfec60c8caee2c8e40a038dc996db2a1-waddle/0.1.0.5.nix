{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "waddle";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Martin Grabmueller";
        maintainer = "martin@grabmueller.de";
        author = "Martin Grabmueller";
        homepage = "https://github.com/mgrabmueller/waddle";
        url = "";
        synopsis = "DOOM WAD file utilities.";
        description = "Library for reading WAD files as used by the DOOM engine into Haskell types.";
        buildType = "Simple";
      };
      components = {
        waddle = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.case-insensitive
            hsPkgs.JuicyPixels
            hsPkgs.directory
          ];
        };
        exes = {
          export-to-js = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.case-insensitive
              hsPkgs.JuicyPixels
              hsPkgs.directory
              hsPkgs.waddle
            ];
          };
          export-to-png = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.case-insensitive
              hsPkgs.JuicyPixels
              hsPkgs.directory
              hsPkgs.waddle
            ];
          };
          wad-info = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.binary
              hsPkgs.containers
              hsPkgs.case-insensitive
              hsPkgs.JuicyPixels
              hsPkgs.directory
              hsPkgs.waddle
            ];
          };
        };
      };
    }