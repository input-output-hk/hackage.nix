{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      inotify = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ztail";
          version = "1.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dylan@dylex.net";
        author = "Dylan Simon";
        homepage = "";
        url = "";
        synopsis = "Multi-file, colored, filtered log tailer.";
        description = "An even more improved version of xtail/tail -f, including inotify support, full regex-based filtering, substitution, and colorization.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ztail = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.process
              hsPkgs.array
              hsPkgs.filepath
              hsPkgs.bytestring
              hsPkgs.regex-posix
              hsPkgs.unordered-containers
            ] ++ pkgs.lib.optional _flags.inotify hsPkgs.hinotify;
          };
        };
      };
    }