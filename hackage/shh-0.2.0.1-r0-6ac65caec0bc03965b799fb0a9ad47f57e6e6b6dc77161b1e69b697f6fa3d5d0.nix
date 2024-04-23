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
      specVersion = "1.10";
      identifier = { name = "shh"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Luke Clifton";
      maintainer = "lukec@themk.net";
      author = "Luke Clifton";
      homepage = "";
      url = "";
      synopsis = "Simple shell scripting from Haskell";
      description = "Provides a shell scripting environment for Haskell. It\nhelps you all external binaries, and allows you to\nperform many shell-like functions, such as piping\nand redirection.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "shh-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."shh" or (errorHandler.buildDepError "shh"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.coreutils.components.exes.coreutils or (pkgs.buildPackages.coreutils or (errorHandler.buildToolDepError "coreutils:coreutils")))
            (hsPkgs.buildPackages.vault.components.exes.vault or (pkgs.buildPackages.vault or (errorHandler.buildToolDepError "vault:vault")))
            (hsPkgs.buildPackages.vim.components.exes.vim or (pkgs.buildPackages.vim or (errorHandler.buildToolDepError "vim:vim")))
          ];
          buildable = true;
        };
      };
      tests = {
        "shh-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."shh" or (errorHandler.buildDepError "shh"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.perl.components.exes.perl or (pkgs.buildPackages.perl or (errorHandler.buildToolDepError "perl:perl")))
            (hsPkgs.buildPackages.vim.components.exes.vim or (pkgs.buildPackages.vim or (errorHandler.buildToolDepError "vim:vim")))
          ];
          buildable = true;
        };
      };
    };
  }