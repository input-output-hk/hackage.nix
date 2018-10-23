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
        name = "qtah-examples";
        version = "0.2.0";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2016 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Example programs for Qtah Qt bindings";
      description = "Qtah is a set of Qt bindings for Haskell.  This package contains example\nprograms to demonstrate use of the bindings.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "qtah-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hoppy-runtime)
            (hsPkgs.qtah-qt5)
          ];
        };
      };
    };
  }