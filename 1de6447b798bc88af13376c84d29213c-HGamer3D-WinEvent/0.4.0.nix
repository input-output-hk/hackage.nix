{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.4";
      identifier = {
        name = "HGamer3D-WinEvent";
        version = "0.4.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Windowing and Event Functionality for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Windowing and Event\nfunctionality, based on the package HGamer3D-SDL2-Binding.\nHGamer3D-WinEvent is available on Windows and Linux.";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-WinEvent" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.HGamer3D-SDL2-Binding)
        ];
      };
    };
  }