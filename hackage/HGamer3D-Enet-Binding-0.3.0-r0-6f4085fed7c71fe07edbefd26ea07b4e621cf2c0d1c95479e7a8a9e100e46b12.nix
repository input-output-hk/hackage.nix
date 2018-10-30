{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "HGamer3D-Enet-Binding";
        version = "0.3.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Enet Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Enet binding.\nHGamer3D-Enet-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of Enet\nfunctionality, but only to support what is needed for the\nHGamer3D-Network package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
        ];
        libs = if system.isWindows
          then [ (pkgs."hg3denet030") ]
          else [
            (pkgs."hg3denet030")
            (pkgs.":libenet.so.2")
          ];
      };
    };
  }