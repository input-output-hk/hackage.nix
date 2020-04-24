{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-novelty-plugins"; version = "5.0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Novelty plugins for Lambdabot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[bf] Run Brainf*ck code.\n\n[dice] Roll some dice.\n\n[elite] zPEak Gib8erI\$|-|.\n\n[filter] More gibberish.\n\n[numberwang] Sorry, that's not Numberwang.\n\n[quote] Parrot profound wisdom.\n\n[slap] Delegate punishment.\n\n[unlambda] Run Unlambda code.\n\n[vixen] Let's chat, honey.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dice" or ((hsPkgs.pkgs-errors).buildDepError "dice"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."lambdabot-core" or ((hsPkgs.pkgs-errors).buildDepError "lambdabot-core"))
          (hsPkgs."misfortune" or ((hsPkgs.pkgs-errors).buildDepError "misfortune"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."brainfuck" or ((hsPkgs.pkgs-errors).buildDepError "brainfuck"))
          (hsPkgs."unlambda" or ((hsPkgs.pkgs-errors).buildDepError "unlambda"))
          ];
        buildable = true;
        };
      };
    }