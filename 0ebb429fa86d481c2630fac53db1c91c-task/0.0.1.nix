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
        name = "task";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sean.seefried@gmail.com";
      author = "Sean Seefried";
      homepage = "";
      url = "";
      synopsis = "A command line tool for keeping track of tasks you worked on";
      description = "'task' is a simple command line tool for keeping track of\ntasks you are working on. Tasks are kept in a simple\npersistent store. Each task can be tagged with arbitrary\nkey/value pairs and the results can be exported to CSV files\nfiltered on said key/value pairs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "task" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.old-locale)
            (hsPkgs.csv-enumerator)
          ];
        };
      };
    };
  }