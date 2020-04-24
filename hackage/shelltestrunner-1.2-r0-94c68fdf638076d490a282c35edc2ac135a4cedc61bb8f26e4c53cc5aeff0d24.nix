{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "shelltestrunner"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://joyful.com/shelltestrunner";
      url = "";
      synopsis = "A tool for testing command-line programs.";
      description = "shelltestrunner is a cross-platform tool for testing command-line\nprograms (or arbitrary shell commands.)  It reads simple declarative tests\nspecifying a command, some input, and the expected output, error output\nand exit status.  Tests can be run selectively, in parallel, with a\ntimeout, in color, and/or with differences highlighted.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "shelltest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cabal-file-th" or ((hsPkgs.pkgs-errors).buildDepError "cabal-file-th"))
            (hsPkgs."FileManipCompat" or ((hsPkgs.pkgs-errors).buildDepError "FileManipCompat"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            ];
          buildable = true;
          };
        };
      };
    }