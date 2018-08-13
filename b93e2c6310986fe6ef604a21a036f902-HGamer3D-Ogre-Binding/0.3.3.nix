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
        name = "HGamer3D-Ogre-Binding";
        version = "0.3.3";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Ogre Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Ogre binding.\nHGamer3D-Ogre-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of Ogre\nfunctionality, but only to support what is needed for the\nHGamer3D-Graphics3D package.";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-Ogre-Binding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.HGamer3D-Data)
        ];
        libs = if system.isWindows
          then [ (pkgs.hg3dogre033) ]
          else [
            (pkgs.hg3dogre033)
            (pkgs.OgreMain)
            (pkgs.OgrePaging)
            (pkgs.OgreProperty)
            (pkgs.OgreRTShaderSystem)
            (pkgs.OgreTerrain)
          ];
      };
    };
  }