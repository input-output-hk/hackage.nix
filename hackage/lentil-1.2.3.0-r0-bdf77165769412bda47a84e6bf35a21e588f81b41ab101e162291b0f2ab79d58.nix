{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "lentil"; version = "1.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2015-2019 Francesco Ariis et al. (check authors.txt)";
      maintainer = "Francesco Ariis <fa-ml@ariis.it>";
      author = "Francesco Ariis <fa-ml@ariis.it> et al.\n(check authors.txt)";
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
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.natural-sort)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.regex-tdfa)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.terminal-progress-bar)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.csv)
            (hsPkgs.directory)
            (hsPkgs.filemanip)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.natural-sort)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pipes)
            (hsPkgs.regex-tdfa)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }