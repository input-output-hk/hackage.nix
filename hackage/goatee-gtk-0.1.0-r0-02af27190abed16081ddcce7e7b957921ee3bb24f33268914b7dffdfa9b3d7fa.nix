{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "goatee-gtk"; version = "0.1.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2014 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/goatee";
      url = "";
      synopsis = "A monadic take on a 2,500-year-old board game - GTK+ UI.";
      description = "Goatee is a Go library and game editor, written in Haskell.  It provides a GUI\nfor recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files, to build UIs and tools.\n\nGoatee, the library and GUI, aims to be full-featured, supporting all of the SGF\nspec and allowing for full customization of the game records you create.\nCurrently it is in an alpha stage, supporting basic game viewing and editing.\n\nThis package is the GTK+ UI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gtk)
          (hsPkgs.goatee)
          (hsPkgs.mtl)
          ];
        };
      exes = {
        "goatee-gtk" = {
          depends = [ (hsPkgs.base) (hsPkgs.gtk) (hsPkgs.goatee-gtk) ];
          };
        };
      tests = {
        "test-goatee-gtk" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.goatee-gtk)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            ];
          };
        };
      };
    }