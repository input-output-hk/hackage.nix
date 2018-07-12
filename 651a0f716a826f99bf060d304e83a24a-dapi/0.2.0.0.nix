{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dapi";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Omari Norman";
        maintainer = "omari@smileystation.com";
        author = "Omari Norman";
        homepage = "http://massysett.github.com/dapi";
        url = "";
        synopsis = "Prints a series of dates";
        description = "dapi prints a series of dates to the console. You can filter the\ndates based on multiple criteria, such as day of the week, day,\nmonth, and more. Slightly more information is at the homepage link\ngiven below.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "dapi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.transformers
              hsPkgs.time
              hsPkgs.explicit-exception
              hsPkgs.prednote
              hsPkgs.multiarg
              hsPkgs.old-locale
              hsPkgs.rainbow
            ];
          };
        };
      };
    }