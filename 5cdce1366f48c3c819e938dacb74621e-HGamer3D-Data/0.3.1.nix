{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-Data";
          version = "0.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Game Engine for the Haskell Programmer - Data Definitions and Utilities";
        description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. HGamer3D is available on Windows and Linux. This\npackage provides common data definitions and utility functions for HGamer3D.";
        buildType = "Simple";
      };
      components = {
        "HGamer3D-Data" = {
          depends  = [
            hsPkgs.base
            hsPkgs.FindBin
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.vect
          ];
        };
      };
    }