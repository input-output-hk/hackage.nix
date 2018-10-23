{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hp2any-core";
        version = "0.11.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "http://www.haskell.org/haskellwiki/Hp2any";
      url = "";
      synopsis = "Heap profiling helper library";
      description = "This is the core library of the hp2any suite. It makes heap profiles\navailable during runtime through a simple interface, optionally\nmanaging all the data in the background. It can also process\narchived profiler output and present it in a structured form.";
      buildType = "Simple";
    };
    components = {
      "hp2any-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.old-locale)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
        ];
      };
    };
  }