{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hobbes";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://github.com/jhickner/hobbes";
        url = "";
        synopsis = "A small file watcher for OSX";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          hobbes = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.system-filepath
              hsPkgs.filemanip
              hsPkgs.fsnotify
              hsPkgs.text
            ];
          };
        };
      };
    }