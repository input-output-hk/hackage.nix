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
      specVersion = "1.10";
      identifier = {
        name = "qtah-qt5";
        version = "0.2.0";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2016 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Qt bindings for Haskell";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains the Haskell\nside of the bindings, and is what Qt programs should use directly.";
      buildType = "Custom";
    };
    components = {
      "qtah-qt5" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hoppy-runtime)
          (hsPkgs.qtah-cpp-qt5)
          (hsPkgs.qtah-generator)
        ];
        libs = [ (pkgs.qtah) ];
      };
      tests = {
        "test-qtah" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hoppy-runtime)
            (hsPkgs.HUnit)
            (hsPkgs.qtah-qt5)
          ];
          libs = [ (pkgs.qtah) ];
        };
      };
    };
  }