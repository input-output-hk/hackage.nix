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
        name = "khph";
        version = "0.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Bryan Gardiner <bog@khumba.net>";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/khph";
      url = "";
      synopsis = "Command-line file tagging and organization tool";
      description = "Khph is a tool for managing collections of files from the command line.  It\nallows you to tag files via symlinks, and query your collection with a simple\nquery language.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "khph" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }