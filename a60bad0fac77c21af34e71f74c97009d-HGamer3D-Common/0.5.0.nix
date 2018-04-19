{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-Common";
          version = "0.5.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Toolset for the Haskell Game Programmer - Game Engine and Utilities";
        description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. HGamer3D is available on Windows and Linux. This\npackage provides common engine definitions and utility functions for HGamer3D.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-Common = {
          depends  = [
            hsPkgs.base
            hsPkgs.HGamer3D-Data
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