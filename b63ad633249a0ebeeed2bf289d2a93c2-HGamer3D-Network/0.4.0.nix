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
        name = "HGamer3D-Network";
        version = "0.4.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Networking Functionality for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Networking functionality,\nbased on the package HGamer3D-Enet-Binding. HGamer3D-Network is\navailable on Windows and Linux.";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-Network" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.HGamer3D-Enet-Binding)
        ];
      };
    };
  }