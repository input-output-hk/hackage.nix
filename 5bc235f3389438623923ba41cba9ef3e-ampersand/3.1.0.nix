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
        name = "ampersand";
        version = "3.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "Stef Joosten";
      maintainer = "stef.joosten@ou.nl";
      author = "Stef Joosten";
      homepage = "http://wiki.tarski.nl";
      url = "";
      synopsis = "Toolsuite for automated design of business processes.";
      description = "You can define your business processes by means of rules, written in Relation Algebra.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ampersand" = {
          depends  = [
            (hsPkgs.HStringTemplate)
            (hsPkgs.SpreadsheetML)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.graphviz)
            (hsPkgs.hashable)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.simple-sql-parser)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.utf8-string)
            (hsPkgs.text)
            (hsPkgs.xlsx)
            (hsPkgs.zlib)
            (hsPkgs.lens)
            (hsPkgs.MissingH)
            (hsPkgs.wl-pprint)
          ];
        };
      };
      tests = {
        "ampersand-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hashable)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.simple-sql-parser)
            (hsPkgs.utf8-string)
            (hsPkgs.wl-pprint)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.xlsx)
            (hsPkgs.zlib)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }