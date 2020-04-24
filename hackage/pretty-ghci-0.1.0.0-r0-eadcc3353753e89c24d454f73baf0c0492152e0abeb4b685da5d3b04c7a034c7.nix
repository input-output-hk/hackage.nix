{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "pretty-ghci"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alec Theriault";
      maintainer = "alec.theriault@gmail.com";
      author = "Alec Theriault";
      homepage = "";
      url = "";
      synopsis = "Functionality for beautifying GHCi";
      description = "Provides a library and an executable for parsing and pretty-printing the\noutput of derived @Show@ instances as well as Haddock docstrings. The idea is\nto provide functionality that can be easily plugged into GHCi's\n@-interactive-print@ option, making for a better REPL experience.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haddock-library" or ((hsPkgs.pkgs-errors).buildDepError "haddock-library"))
          (hsPkgs."prettyprinter-ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "pp-ghci" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty-ghci" or ((hsPkgs.pkgs-errors).buildDepError "pretty-ghci"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haddock-test" = {
          depends = [
            (hsPkgs."pretty-ghci" or ((hsPkgs.pkgs-errors).buildDepError "pretty-ghci"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        "show-test" = {
          depends = [
            (hsPkgs."pretty-ghci" or ((hsPkgs.pkgs-errors).buildDepError "pretty-ghci"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }