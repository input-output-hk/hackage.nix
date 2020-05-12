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
      specVersion = "1.8";
      identifier = { name = "lambdabot-haskell-plugins"; version = "5.1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot Haskell plugins";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[check] Quick, check!\n\n[djinn] Derive implementations from types intuitinistically.\n\n[eval] Run Haskell code.\n\n[free] Theorems for free.\n\n[haddock] Find modules implementing a function.\n\n[hoogle] Search for functions by type using hoogle.\n\n[instances] Query instances of type classes.\n\n[pl] Produce point-less code.\n\n[pointful] Produce point-ful code.\n\n[pretty] Print code prettily.\n\n[source] Show implementations of standard functions.\n\n[type] Query type of expressions.\n\n[undo] Unfold do notation.\n\n[unmtl] Expand monad transformers stacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts-simple" or (errorHandler.buildDepError "haskell-src-exts-simple"))
          (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
          (hsPkgs."lambdabot-reference-plugins" or (errorHandler.buildDepError "lambdabot-reference-plugins"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."oeis" or (errorHandler.buildDepError "oeis"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
          (hsPkgs."hoogle" or (errorHandler.buildDepError "hoogle"))
          (hsPkgs."IOSpec" or (errorHandler.buildDepError "IOSpec"))
          (hsPkgs."lambdabot-trusted" or (errorHandler.buildDepError "lambdabot-trusted"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mueval" or (errorHandler.buildDepError "mueval"))
          (hsPkgs."numbers" or (errorHandler.buildDepError "numbers"))
          (hsPkgs."show" or (errorHandler.buildDepError "show"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }