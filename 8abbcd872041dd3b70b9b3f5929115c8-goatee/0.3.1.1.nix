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
      specVersion = "1.8";
      identifier = {
        name = "goatee";
        version = "0.3.1.1";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2014-2015 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/goatee";
      url = "";
      synopsis = "A monadic take on a 2,500-year-old board game - library.";
      description = "Goatee is a Go library and game editor, written in Haskell.  It provides a\nGUI for recording, studying, and editing game records.  Underneath this is a\nportable library for manipulating SGF files to build UIs and tools.  Goatee\naims to be full-featured by supporting all of the SGF spec and allowing for\nfull and easy customization of the game records you create.\n\nThis package is the shared library.";
      buildType = "Simple";
    };
    components = {
      "goatee" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test-goatee" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.goatee)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }