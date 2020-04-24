{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hpc-threshold"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ecky Putrady";
      maintainer = "eckyputrady@gmail.com";
      author = "Ecky Putrady";
      homepage = "https://github.com/eckyputrady/hpc-threshold#readme";
      url = "";
      synopsis = "Ensure the code coverage is above configured thresholds";
      description = "Please see the README on Github at <https://github.com/eckyputrady/hpc-threshold#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."interpolate" or ((hsPkgs.pkgs-errors).buildDepError "interpolate"))
          (hsPkgs."pcre-heavy" or ((hsPkgs.pkgs-errors).buildDepError "pcre-heavy"))
          ];
        buildable = true;
        };
      exes = {
        "hpc-threshold" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hpc-threshold" or ((hsPkgs.pkgs-errors).buildDepError "hpc-threshold"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hpc-threshold-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hpc-threshold" or ((hsPkgs.pkgs-errors).buildDepError "hpc-threshold"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }