{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mighttpd";
          version = "0.4.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
        url = "";
        synopsis = "Simple Web Server in Haskell";
        description = "A simple but practical HTTP server in Haskell.\n'mighttpd' should be called 'mighty'.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mighttpd = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.c10k
              hsPkgs.hslogger
              hsPkgs.webserver
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.haskell98
              hsPkgs.hdaemonize
              hsPkgs.directory
              hsPkgs.unix
              hsPkgs.time
              hsPkgs.network
            ];
          };
          mkindex = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }