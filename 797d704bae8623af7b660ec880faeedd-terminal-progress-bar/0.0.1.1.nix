{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "terminal-progress-bar";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Roel van Dijk <vandijk.roel@gmail.com>";
        maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
        author = "Roel van Dijk <vandijk.roel@gmail.com>";
        homepage = "https://github.com/roelvandijk/terminal-progress-bar";
        url = "";
        synopsis = "A simple progress bar in the terminal";
        description = "A progress bar is used to convey the progress of a task. This\npackage implements a very simple textual progress bar.\n\nSee the module 'System.ProgressBar' on how to use the progress bar\nor build the package with the -fexample flag for a small example\nprogram.\n\nThe animated progress bar depends entirely on the interpretation of\nthe carriage return character (\\'\\r\\'). If your terminal interprets\nit as something else then \"move cursor to beginning of line\", the\nanimation won't work.\n\nNote: Due to a bug in \\\"cabal haddock\\\" you will have to manually\nuncomment the example section in the cabal file. But uncommenting\nthat section will result in \\\"cabal haddock\\\" failing.";
        buildType = "Simple";
      };
      components = {
        terminal-progress-bar = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
          ];
        };
        tests = {
          test-terminal-progress-bar = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.HUnit
              hsPkgs.terminal-progress-bar
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }