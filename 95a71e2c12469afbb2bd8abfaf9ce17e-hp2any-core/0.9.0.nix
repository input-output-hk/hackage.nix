{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hp2any-core";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009, Patai Gergely";
        maintainer = "Patai Gergely (patai@iit.bme.hu)";
        author = "Patai Gergely";
        homepage = "";
        url = "";
        synopsis = "Heap profiling helper library";
        description = "This is the core library of the hp2any suite. It makes heap profiles\navailable during runtime through a simple interface, optionally\nmanaging all the data in the background. It can also process\narchived profiler output and present it in a structured form.";
        buildType = "Simple";
      };
      components = {
        hp2any-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.old-locale
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.bytestring-trie
          ];
        };
      };
    }