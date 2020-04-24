{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haskore-synthesizer"; version = "0.0.3.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Music rendering coded in Haskell";
      description = "Use native Haskell Audio Signal Processing for Music rendering with Haskore.\nContains several example songs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-filter" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-filter"))
          (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
          (hsPkgs."haskore" or ((hsPkgs.pkgs-errors).buildDepError "haskore"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "rendersong" = {
          depends = [
            (hsPkgs."haskore-synthesizer" or ((hsPkgs.pkgs-errors).buildDepError "haskore-synthesizer"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }