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
        name = "HGamer3D-SFML-Binding";
        version = "0.3.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "SFML Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the SFML binding.\nHGamer3D-SFML-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of SFML\nfunctionality, but only to support what is needed for the\nHGamer3D-Audio and HGamer3D-InputSystem packages.";
      buildType = "Simple";
    };
    components = {
      "HGamer3D-SFML-Binding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
        ];
        libs = if system.isWindows
          then [ (pkgs.hg3dsfml031) ]
          else [
            (pkgs.hg3dsfml031)
            (pkgs.sfml-audio)
            (pkgs.sfml-system)
            (pkgs.sfml-window)
            (pkgs.sfml-network)
          ];
      };
    };
  }