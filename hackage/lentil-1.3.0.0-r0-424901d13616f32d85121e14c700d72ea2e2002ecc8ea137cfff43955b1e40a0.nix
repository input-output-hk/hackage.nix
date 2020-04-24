{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { developer = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "lentil"; version = "1.3.0.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."natural-sort" or ((hsPkgs.pkgs-errors).buildDepError "natural-sort"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."csv" or ((hsPkgs.pkgs-errors).buildDepError "csv"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."natural-sort" or ((hsPkgs.pkgs-errors).buildDepError "natural-sort"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }