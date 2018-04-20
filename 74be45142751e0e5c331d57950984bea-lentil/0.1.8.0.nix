{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lentil";
          version = "0.1.8.0";
        };
        license = "GPL-3.0-only";
        copyright = "© 2015 Francesco Ariis";
        maintainer = "Francesco Ariis <fa-ml@ariis.it>";
        author = "Francesco Ariis <fa-ml@ariis.it>";
        homepage = "http://www.ariis.it/static/articles/lentil/page.html";
        url = "";
        synopsis = "frugal issue tracker";
        description = "minumum effort, cohesive issue tracker based on\nubiquitous @TODO@s and @FIXME@s conventions.\nCheck homepage for manual, tutorial, examples.";
        buildType = "Simple";
      };
      components = {
        exes = {
          lentil = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.regex-tdfa
              hsPkgs.natural-sort
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.filemanip
              hsPkgs.ansi-wl-pprint
              hsPkgs.csv
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.regex-tdfa
              hsPkgs.natural-sort
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.filemanip
              hsPkgs.ansi-wl-pprint
              hsPkgs.hspec
              hsPkgs.csv
            ];
          };
        };
      };
    }