{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "aeson-tiled";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Schell Scivally";
      maintainer = "schell@takt.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/aeson-tiled#readme";
      url = "";
      synopsis = "Aeson instances for the Tiled map editor.";
      description = "The mighty Tiled 2d map editor is an open source\napp for creating tile based level maps. This package provides\ntypes and aeson instances to read Tiled json files.";
      buildType = "Simple";
    };
    components = {
      "aeson-tiled" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "aeson-tiled-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson-tiled)
          ];
        };
      };
      tests = {
        "aeson-tiled-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-tiled)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }