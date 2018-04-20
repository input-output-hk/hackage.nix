{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "HGamer3D-InputSystem";
          version = "0.5.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "althainz@gmail.com";
        author = "Peter Althainz";
        homepage = "http://www.hgamer3d.org";
        url = "";
        synopsis = "Joystick, Mouse and Keyboard Functionality for HGamer3D";
        description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This package provides the Joystick, Mouse and Keyboard\nfunctionality, based on the packages HGamer3D-SFML-Binding and\nHGamer3D-SDL2-Binding. HGamer3D-InputSystem is available on\nWindows and Linux.";
        buildType = "Simple";
      };
      components = {
        HGamer3D-InputSystem = {
          depends  = [
            hsPkgs.base
            hsPkgs.HGamer3D-Data
            hsPkgs.HGamer3D-SFML-Binding
            hsPkgs.HGamer3D-SDL2-Binding
            hsPkgs.HGamer3D-Common
          ];
        };
      };
    }