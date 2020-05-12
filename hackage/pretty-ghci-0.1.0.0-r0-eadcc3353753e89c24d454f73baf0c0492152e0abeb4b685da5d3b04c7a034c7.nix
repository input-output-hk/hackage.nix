{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "pp-ghci" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pretty-ghci" or (errorHandler.buildDepError "pretty-ghci"))
            ];
          buildable = true;
          };
        };
      tests = {
        "haddock-test" = {
          depends = [
            (hsPkgs."pretty-ghci" or (errorHandler.buildDepError "pretty-ghci"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "show-test" = {
          depends = [
            (hsPkgs."pretty-ghci" or (errorHandler.buildDepError "pretty-ghci"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }