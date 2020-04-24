{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimizeadvanced = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-dimensional"; version = "0.7.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing with static physical dimensions";
      description = "High-level functions that use physical units and\nabstract from the sample rate in statically type safe way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
          (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
          (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
          (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "rain" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "demonstration" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."synthesizer-dimensional" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."sox" or ((hsPkgs.pkgs-errors).buildDepError "sox"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."storable-record" or ((hsPkgs.pkgs-errors).buildDepError "storable-record"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
            (hsPkgs."non-negative" or ((hsPkgs.pkgs-errors).buildDepError "non-negative"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "traumzauberbaum" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or ((hsPkgs.pkgs-errors).buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or ((hsPkgs.pkgs-errors).buildDepError "numeric-prelude"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."storablevector" or ((hsPkgs.pkgs-errors).buildDepError "storablevector"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }