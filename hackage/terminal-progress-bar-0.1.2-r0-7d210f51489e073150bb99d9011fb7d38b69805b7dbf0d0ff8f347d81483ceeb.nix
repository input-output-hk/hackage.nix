{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "terminal-progress-bar";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2012–2018 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/roelvandijk/terminal-progress-bar";
      url = "";
      synopsis = "A simple progress bar in the terminal";
      description = "A progress bar is used to convey the progress of a task. This\npackage implements a very simple textual progress bar.\n\nSee the module 'System.ProgressBar' on how to use the progress bar\nor build the package with the -fexample flag for a small example\nprogram.\n\nThe animated progress bar depends entirely on the interpretation of\nthe carriage return character (\\'\\\\r\\'). If your terminal interprets\nit as something else than \\\"move cursor to beginning of line\\\", the\nanimation won't work.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.terminal-size)
        ];
      };
      exes = {
        "example" = {
          depends  = pkgs.lib.optionals (flags.example) [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.terminal-progress-bar)
          ];
        };
      };
      tests = {
        "test-terminal-progress-bar" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.terminal-progress-bar)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }