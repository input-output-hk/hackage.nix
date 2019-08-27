let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimizeadvanced = false; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "synthesizer-dimensional"; version = "0.8.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing with static physical dimensions";
      description = "High-level functions that use physical units and\nabstract from the sample rate in a statically type safe way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      exes = {
        "rain" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or (buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "demonstration" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."synthesizer-dimensional" or (buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."sox" or (buildDepError "sox"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."storable-record" or (buildDepError "storable-record"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "traumzauberbaum" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."synthesizer-dimensional" or (buildDepError "synthesizer-dimensional"))
            (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
            (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }