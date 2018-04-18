{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-Wire";
          version = "0.3.3";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Wire Functionality for HGamer3D";
        description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell.\nThis package shows experimental usage of netwire for a GUI example.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-Wire = {
          depends  = [
            hsPkgs.base
            hsPkgs.netwire
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.HGamer3D-Data
            hsPkgs.HGamer3D
            hsPkgs.HGamer3D-GUI
            hsPkgs.HGamer3D-InputSystem
            hsPkgs.HGamer3D-Audio
            hsPkgs.HGamer3D-WinEvent
          ];
        };
      };
    }