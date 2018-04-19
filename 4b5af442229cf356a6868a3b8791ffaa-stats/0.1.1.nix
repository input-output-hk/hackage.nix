{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "stats";
          version = "0.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (C) 2013 John Chee";
        maintainer = "cheecheeo@gmail.com";
        author = "John Chee";
        homepage = "http://github.com/cheecheeo/stats/";
        url = "";
        synopsis = "command line statistics";
        description = "Feed in statistics on standard input and see number of samples, average, minimum, 1st quartile, median, 3rd quartile and maximum. Input can be prefixed with a common string, only the last word needs to be a number value. Statistics will be computed for each run of lines with equal prefixes.";
        buildType = "Simple";
      };
      components = {
        exes = {
          stats = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.statistics
              hsPkgs.vector
            ];
          };
        };
      };
    }