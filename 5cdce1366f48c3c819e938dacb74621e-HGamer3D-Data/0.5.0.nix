{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-Data";
          version = "0.5.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Toolset for the Haskell Game Programmer - Data Definitions";
        description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. HGamer3D is available on Windows and Linux. This\npackage provides common data definitions and utility functions for HGamer3D.\nAlso in this package, the Entity Component System is placed.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-Data = {
          depends  = [
            hsPkgs.base
            hsPkgs.FindBin
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.vect
            hsPkgs.clock
            hsPkgs.stm
            hsPkgs.containers
          ];
        };
      };
    }