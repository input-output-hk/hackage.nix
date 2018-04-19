{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-Audio";
          version = "0.5.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Toolset for the Haskell Game Programmer - Audio Functionality";
        description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This package provides the Audio functionality,\nbased on the package HGamer3D-SFML-Binding. HGamer3D-Audio\nis available on Windows and Linux.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-Audio = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.HGamer3D-Data
            hsPkgs.HGamer3D-SFML-Binding
            hsPkgs.HGamer3D-Common
          ];
        };
      };
    }