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
        name = "HGamer3D-Graphics3D";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "3D Graphics Functionality for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the 3D Graphics functionality\nbased on the package HGamer3D-Ogre-Binding. HGamer3D-Graphics3D is\navailable on Windows and Linux.";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-Graphics3D" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.HGamer3D-Data)
          (hsPkgs.HGamer3D-Ogre-Binding)
        ];
      };
    };
  }