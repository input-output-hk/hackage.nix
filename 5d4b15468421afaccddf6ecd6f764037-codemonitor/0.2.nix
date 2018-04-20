{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "codemonitor";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Rickard Lindberg <ricli85@gmail.com>";
        author = "Rickard Lindberg <ricli85@gmail.com>";
        homepage = "http://github.com/rickardlindberg/codemonitor";
        url = "";
        synopsis = "Tool that automatically runs arbitrary commands when files change on disk.";
        description = "Tool that automatically runs arbitrary commands when files change on disk.";
        buildType = "Simple";
      };
      components = {
        exes = {
          codemonitor = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.regex-posix
              hsPkgs.process
              hsPkgs.containers
              hsPkgs.gtk
              hsPkgs.cairo
              hsPkgs.hinotify
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.MissingH
            ];
          };
        };
      };
    }