{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-haskell-plugins"; version = "5.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Lambdabot Haskell plugins";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[check] Quick, check!\n\n[djinn] Derive implementations from types intuitinistically.\n\n[eval] Run Haskell code.\n\n[free] Theorems for free.\n\n[haddock] Find modules implementing a function.\n\n[hoogle] Search for functions by type using hoogle.\n\n[instances] Query instances of type classes.\n\n[pl] Produce point-less code.\n\n[pointful] Produce point-ful code.\n\n[pretty] Print code prettily.\n\n[source] Show implementations of standard functions.\n\n[type] Query type of expressions.\n\n[undo] Unfold do notation.\n\n[unmtl] Expand monad transformers stacks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."lambdabot-core" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-core"))
          (hsPkgs."lambdabot-reference-plugins" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-reference-plugins"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."oeis" or ((hsPkgs.pkgs-errors).buildDepError "oeis"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
          (hsPkgs."data-memocombinators" or ((hsPkgs.pkgs-errors).buildDepError "data-memocombinators"))
          (hsPkgs."hoogle" or ((hsPkgs.pkgs-errors).buildDepError "hoogle"))
          (hsPkgs."IOSpec" or ((hsPkgs.pkgs-errors).buildDepError "IOSpec"))
          (hsPkgs."lambdabot-trusted" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-trusted"))
          (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mueval" or ((hsPkgs.pkgs-errors).buildDepError "mueval"))
          (hsPkgs."numbers" or ((hsPkgs.pkgs-errors).buildDepError "numbers"))
          (hsPkgs."show" or ((hsPkgs.pkgs-errors).buildDepError "show"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }