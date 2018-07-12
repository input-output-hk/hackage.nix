{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "timeplot";
          version = "1.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "Eugene Kirpichov, 2009-2011";
        maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
        author = "Eugene Kirpichov <ekirpichov@gmail.com>";
        homepage = "http://haskell.org/haskellwiki/Timeplot";
        url = "";
        synopsis = "A tool for visualizing time series from log files.";
        description = "A tool for visualizing time series from log files.\nReads an input file with events in different \"tracks\" and draws a diagram for\neach track, where a diagram may be one of several types. See --help for help and the\nhomepage for a bigger description, examples and a tutorial. See presentation:\n<http://www.slideshare.net/jkff/two-visualization-tools> or download:\n<http://jkff.info/presentations/two-visualization-tools.pdf>.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "tplot" = {
            depends  = [
              hsPkgs.Chart
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.cairo
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.regex-tdfa
              hsPkgs.strptime
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.vcs-revision
              hsPkgs.template-haskell
            ];
          };
        };
      };
    }