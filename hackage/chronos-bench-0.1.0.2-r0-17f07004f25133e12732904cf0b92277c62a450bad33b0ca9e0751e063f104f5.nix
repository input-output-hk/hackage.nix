{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "chronos-bench"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019, Florian Knupfer";
      maintainer = "fknupfer@gmail.com";
      author = "Florian Knupfer";
      homepage = "https://github.com/knupfer/chronos";
      url = "";
      synopsis = "Benchmarking tool with focus on comparing results.";
      description = "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      exes = {
        "chronos" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chronos-bench" or ((hsPkgs.pkgs-errors).buildDepError "chronos-bench"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."chronos-bench" or ((hsPkgs.pkgs-errors).buildDepError "chronos-bench"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }