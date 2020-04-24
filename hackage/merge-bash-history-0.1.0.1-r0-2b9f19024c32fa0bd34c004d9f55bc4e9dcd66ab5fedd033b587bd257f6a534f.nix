{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "merge-bash-history"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Jiri Marsicek";
      maintainer = "jiri.marsicek@gmail.com";
      author = "Jiri Marsicek";
      homepage = "http://github.com/j1r1k/merge-bash-history#readme";
      url = "";
      synopsis = "command line utility to merge bash_history";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."data-ordlist" or ((hsPkgs.pkgs-errors).buildDepError "data-ordlist"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "merge-bash-history" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."merge-bash-history" or ((hsPkgs.pkgs-errors).buildDepError "merge-bash-history"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "MergeBashHistory-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."merge-bash-history" or ((hsPkgs.pkgs-errors).buildDepError "merge-bash-history"))
            ];
          buildable = true;
          };
        };
      };
    }