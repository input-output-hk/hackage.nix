{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-CEGUI-Binding";
          version = "0.3.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "A Game Engine for the Haskell Programmer - CEGUI  Bindings";
        description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This module provides the CEGUI Bindings.\nHGamer3D-CEGUI-Binding is available on Windows and Linux.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-CEGUI-Binding = {
          depends  = [
            hsPkgs.base
            hsPkgs.HGamer3D-Data
          ];
          libs = if system.isWindows
            then [ pkgs.hg3dcegui031 ]
            else [
              pkgs.hg3dcegui031
              pkgs."CEGUIBase-0.7.7"
              pkgs."CEGUIOgreRenderer-0.7.7"
            ];
        };
      };
    }