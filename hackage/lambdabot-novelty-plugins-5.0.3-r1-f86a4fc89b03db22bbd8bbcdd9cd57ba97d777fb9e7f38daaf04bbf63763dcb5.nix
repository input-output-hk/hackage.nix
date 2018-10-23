{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lambdabot-novelty-plugins";
        version = "5.0.3";
      };
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
      "lambdabot-novelty-plugins" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dice)
          (hsPkgs.directory)
          (hsPkgs.lambdabot-core)
          (hsPkgs.misfortune)
          (hsPkgs.process)
          (hsPkgs.random-fu)
          (hsPkgs.regex-tdfa)
          (hsPkgs.brainfuck)
          (hsPkgs.unlambda)
        ];
      };
    };
  }