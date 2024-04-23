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
      identifier = { name = "pier"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "judah.jacobson@gmail.com";
      author = "";
      homepage = "https://github.com/judah/pier#readme";
      url = "";
      synopsis = "Yet another Haskell build system.";
      description = "Pier is a command-line tool for building Haskell projects.  It is\nsimilar in purpose to <https://www.haskellstack.org Stack>,\nbut explores a different design:\n\n* Pier implements the fine-grained Haskell build logic from (nearly)\nscratch.  In contrast, Stack relies on Cabal to implement most of its\nbuild steps, giving it a more coarse control over the build.\n* Pier uses general-purpose libraries for implementing build systems, namely\n<https://shakebuild.com Shake> and <https://hackage.haskell.org/package/pier-core pier-core>.\n\nFor more information, see the official <https://github.com/judah/pier/blob/master/Readme.md documentation>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pier" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-orphans" or (errorHandler.buildDepError "binary-orphans"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pier-core" or (errorHandler.buildDepError "pier-core"))
            (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
      };
    };
  }