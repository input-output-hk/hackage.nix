{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "lentil"; version = "1.0.11.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2015-2017 Francesco Ariis";
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
        "lentil" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.pipes)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-tdfa)
            (hsPkgs.natural-sort)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.csv)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.text)
            (hsPkgs.semigroups)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.pipes)
            (hsPkgs.optparse-applicative)
            (hsPkgs.regex-tdfa)
            (hsPkgs.natural-sort)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.filemanip)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.csv)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.text)
            (hsPkgs.semigroups)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }