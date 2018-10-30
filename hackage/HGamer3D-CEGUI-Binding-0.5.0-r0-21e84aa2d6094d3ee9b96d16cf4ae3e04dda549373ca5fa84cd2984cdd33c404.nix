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
        name = "HGamer3D-CEGUI-Binding";
        version = "0.5.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "A Toolset for the Haskell Game  Programmer - CEGUI  Bindings";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This module provides the CEGUI Bindings.\nHGamer3D-CEGUI-Binding is available on Windows and Linux.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HGamer3D-Data)
        ];
        libs = if system.isWindows
          then [ (pkgs."hg3dcegui050") ]
          else [
            (pkgs."hg3dcegui050")
            (pkgs."CEGUIBase-0.7.7")
            (pkgs."CEGUIOgreRenderer-0.7.7")
          ];
      };
    };
  }