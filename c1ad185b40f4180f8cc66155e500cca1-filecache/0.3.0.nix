{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "filecache";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Simon Marechal";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "http://lpuppet.banquise.net/";
        url = "";
        synopsis = "A cache system associating values to files.";
        description = "A cache system, that works by associating computation results with file names. When the files are modified, the cache entries are discarded.";
        buildType = "Simple";
      };
      components = {
        filecache = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.fsnotify
            hsPkgs.strict-base-types
            hsPkgs.mtl
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.time
            hsPkgs.stm
          ];
        };
        tests = {
          simpletest = {
            depends  = [
              hsPkgs.base
              hsPkgs.filecache
              hsPkgs.temporary
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.stm
              hsPkgs.hspec
              hsPkgs.filepath
            ];
          };
        };
      };
    }