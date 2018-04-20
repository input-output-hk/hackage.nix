{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "progression";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "http://chplib.wordpress.com/2010/02/04/progression-supporting-optimisation-in-haskell/";
        url = "";
        synopsis = "Automates the recording and graphing of criterion benchmarks";
        description = "Progression is a library that builds on the criterion\nbenchmarking library.  It stores the results of running\nyour benchmarks and graphs the performance of different\nversions of your program against each other.  See the\n\"Progression.Main\" module, and the original blog post at\n<http://chplib.wordpress.com/2010/02/04/progression-supporting-optimisation-in-haskell/>\nto get started, as well as the later post <http://chplib.wordpress.com/2010/03/02/progression-0-3-bar-charts-and-normalisation/>.";
        buildType = "Simple";
      };
      components = {
        progression = {
          depends  = [
            hsPkgs.base
            hsPkgs.criterion
            hsPkgs.directory
            hsPkgs.txt-sushi
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.haskeline
          ];
        };
      };
    }