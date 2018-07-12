{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hslogger-reader";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ard.bates@gmail.com";
        author = "Alex Bates";
        homepage = "http://github.com/prophet-on-that/hslogger-reader";
        url = "";
        synopsis = "Parsing hslogger-produced logs.";
        description = "hslogger-reader provides a function to generate a parser for\n<http://hackage.haskell.org/package/hslogger hslogger>-produced logs\nfrom a hslogger format string (see \"System.Log.Formatter\"). The\naccompanying /profiling/ executable demonstrates parsing and computing\nwith a log file in constant memory.\nAlso bundled is the /filter-logs/ executable, a command-line tool to\nfilter a hslogger-syle log file.";
        buildType = "Simple";
      };
      components = {
        "hslogger-reader" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.hslogger
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        exes = {
          "profiling" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hslogger-reader
              hsPkgs.text
              hsPkgs.attoparsec
            ];
          };
          "filter-logs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hslogger-reader
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.hslogger
              hsPkgs.time
              hsPkgs.text-icu
              hsPkgs.optparse-applicative
              hsPkgs.old-locale
            ];
          };
        };
      };
    }