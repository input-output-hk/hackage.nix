{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "terminal-progress-bar"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2012–2019 Roel van Dijk <roel@lambdacube.nl>";
      maintainer = "Roel van Dijk <roel@lambdacube.nl>";
      author = "Roel van Dijk <roel@lambdacube.nl>";
      homepage = "https://github.com/roelvandijk/terminal-progress-bar";
      url = "";
      synopsis = "A progress bar in the terminal";
      description = "A progress bar conveys the progress of a task. This package\nimplements a progress bar that is displayed in a terminal.\n\nSee the module 'System.ProgressBar' to get started or look at the\nterminal-progress-bar-example package.\n\nThe animated progress bar depends entirely on the interpretation of\nthe carriage return character (\\'\\\\r\\'). If your terminal interprets\nit as something else than \\\"move cursor to beginning of line\\\", the\nanimation won't work.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."terminal-size" or ((hsPkgs.pkgs-errors).buildDepError "terminal-size"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "test-terminal-progress-bar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-terminal-progress-bar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }