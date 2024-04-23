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
      identifier = { name = "castle"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "erochest@gmail.com";
      author = "Eric Rochester";
      homepage = "https://github.com/erochest/castle";
      url = "";
      synopsis = "A tool to manage shared cabal-install sandboxes.";
      description = "I really like having sandboxes baked into cabal-install.\n\nHowever, I got tired of waiting for big packages like Yesod and Lens to\ncompile in project after project that used them. However, I still didn't want\nto install them in the user database. I wanted to maintain /some/ sandboxing\namong a group of projects that all share a common set of packages, but I wanted\nto be able to switch from them or upgrade them easily.\n\nThat's the itch I was trying to scratch with `castle`.\n\nIt allows you to share one Cabal sandbox between multiple projects. This keeps\nthe package versions for all of these projects in line. It also means that you\ndon't have to constantly be re-installing everything, but you still get the\nability to blow away a set of packages without borking your whole system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "castle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }