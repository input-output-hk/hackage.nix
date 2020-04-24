{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "terminal-progress-bar"; version = "0.0.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          ];
        buildable = true;
        };
      tests = {
        "test-terminal-progress-bar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."terminal-progress-bar" or ((hsPkgs.pkgs-errors).buildDepError "terminal-progress-bar"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }