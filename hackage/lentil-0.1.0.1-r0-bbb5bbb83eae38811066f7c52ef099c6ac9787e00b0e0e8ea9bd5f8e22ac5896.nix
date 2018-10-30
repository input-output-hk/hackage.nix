{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lentil";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "© 2015 Francesco Ariis";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Francesco Ariis <fa-ml@ariis.it>";
      homepage = "http://www.ariis.it/static/articles/lentil/page.html";
      url = "";
      synopsis = "frugal issue tracker";
      description = "minumum effort, cohesive issue tracker for the rest of us.\nCheck homepage for manual, tutorial.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lentil" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-tdfa)
            (hsPkgs.natural-sort)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.csv)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-tdfa)
            (hsPkgs.natural-sort)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.hspec)
            (hsPkgs.csv)
          ];
        };
      };
    };
  }