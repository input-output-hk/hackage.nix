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
    flags = { gpl = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "git-vogue"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Oswyn Brent <oztastic703@gmail.com>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "https://github.com/oswynb/git-vogue";
      url = "";
      synopsis = "A framework for pre-commit checks.";
      description = "Make your Haskell git repositories fashionable.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        buildable = true;
      };
      exes = {
        "git-vogue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "git-vogue-cabal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
          ];
          buildable = true;
        };
        "git-vogue-hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
          ];
          buildable = true;
        };
        "git-vogue-stylish" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."stylish-haskell" or (errorHandler.buildDepError "stylish-haskell"))
          ];
          buildable = true;
        };
        "git-vogue-ghc-mod" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-mod" or (errorHandler.buildDepError "ghc-mod"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
          ];
          buildable = true;
        };
      };
      tests = {
        "unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."git-vogue" or (errorHandler.buildDepError "git-vogue"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.git.components.exes.git or (pkgs.pkgsBuildBuild.git or (errorHandler.buildToolDepError "git:git")))
          ];
          buildable = true;
        };
      };
    };
  }