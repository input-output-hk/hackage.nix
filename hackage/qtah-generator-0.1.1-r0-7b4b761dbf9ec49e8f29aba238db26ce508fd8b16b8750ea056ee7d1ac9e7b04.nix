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
        name = "qtah-generator";
        version = "0.1.1";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright 2015-2016 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/qtah";
      url = "";
      synopsis = "Generator for Qtah Qt bindings";
      description = "Qtah is a set of Qt bindings for Haskell.  This package is a Hoppy FFI\ngenerator.  You shouldn't need it directly; rather, qtah-cpp and qtah use it\nas part of their build processes.";
      buildType = "Custom";
    };
    components = {
      "qtah-generator" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "qtah-generator" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hoppy-generator)
            (hsPkgs.hoppy-std)
            (hsPkgs.haskell-src)
            (hsPkgs.mtl)
            (hsPkgs.process)
          ];
        };
      };
    };
  }