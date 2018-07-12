{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pub";
          version = "3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Parnell Springmeyer <parnell@digitalmentat.com>";
        author = "Parnell Springmeyer <parnell@digitalmentat.com>";
        homepage = "";
        url = "";
        synopsis = "Pipe stdin to a redis pub/sub channel";
        description = "<<https://travis-ci.org/ixmatus/pub.svg?branch=master>>\n\n`pub` is an executable for piping data from stdin to a specified\nRedis pub/sub channel.\n\nA typical use for this tool is to tail a log file, match a specific\nline with grep, and pipe it into Redis where multiple consumers can\ndo something different with each incoming log line:\n\n> tail -F /var/log/somelogfile.log | grep \"tracker.gps.parsed\" | pub loglines\n\nIt also comes with a utility named `sub` for piping from a Redis\npub/sub channel to stdout:\n\n> sub loglines | grep \"somemsg\"";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pub" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.optparse-generic
              hsPkgs.pipes
              hsPkgs.pipes-bytestring
              hsPkgs.text
            ];
          };
          "sub" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hedis
              hsPkgs.optparse-generic
              hsPkgs.text
            ];
          };
        };
      };
    }