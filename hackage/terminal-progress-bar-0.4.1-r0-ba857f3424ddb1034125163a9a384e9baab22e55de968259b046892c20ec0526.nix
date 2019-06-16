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
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "test-terminal-progress-bar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      benchmarks = {
        "bench-terminal-progress-bar" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.time)
            ];
          };
        };
      };
    }