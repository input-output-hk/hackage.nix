{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sshd-lint"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "";
      url = "";
      synopsis = "Check sshd configuration for adherence to best practices";
      description = "If not configured correctly, it may be easy for attackers\nto gain access to a system. sshd-lint checks the sshd_config file\nfor adherence to best practices.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sshd-lint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."keyword-args" or ((hsPkgs.pkgs-errors).buildDepError "keyword-args"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."nagios-check" or ((hsPkgs.pkgs-errors).buildDepError "nagios-check"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sshd-lint-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."keyword-args" or ((hsPkgs.pkgs-errors).buildDepError "keyword-args"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."nagios-check" or ((hsPkgs.pkgs-errors).buildDepError "nagios-check"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }