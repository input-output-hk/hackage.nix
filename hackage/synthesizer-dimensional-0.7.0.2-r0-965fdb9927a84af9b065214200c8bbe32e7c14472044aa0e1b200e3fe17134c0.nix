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
    flags = { optimizeadvanced = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-dimensional"; version = "0.7.0.2"; };
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
          (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
          (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "rain" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "demonstration" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."sox" or (errorHandler.buildDepError "sox"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
            (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "traumzauberbaum" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or (errorHandler.buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (errorHandler.buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (errorHandler.buildDepError "numeric-prelude"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }