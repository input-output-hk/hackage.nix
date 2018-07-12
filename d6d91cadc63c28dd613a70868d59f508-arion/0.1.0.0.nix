{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "arion";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "karun012@gmail.com";
        author = "Karun Ramakrishnan";
        homepage = "http://github.com/karun012/arion";
        url = "";
        synopsis = "Watcher and runner for Hspec";
        description = "Watcher and runner for Hspec";
        buildType = "Simple";
      };
      components = {
        exes = {
          "arion" = {
            depends  = [
              hsPkgs.base
              hsPkgs.fsnotify
              hsPkgs.filemanip
              hsPkgs.system-filepath
              hsPkgs.containers
              hsPkgs.regex-posix
              hsPkgs.split
              hsPkgs.text
              hsPkgs.safe
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.transformers
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.fsnotify
              hsPkgs.filemanip
              hsPkgs.time
              hsPkgs.system-filepath
              hsPkgs.containers
              hsPkgs.regex-posix
              hsPkgs.split
              hsPkgs.text
              hsPkgs.safe
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }