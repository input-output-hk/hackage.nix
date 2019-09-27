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
    flags = { buildexamples = false; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "synthesizer-llvm"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "http://code.haskell.org/synthesizer/llvm/";
      synopsis = "Efficient signal processing using runtime compilation";
      description = "Efficient signal processing\nusing runtime compilation and vector instructions.\nIt uses LLVM library, thus it is not bound to a specific CPU.\nIf you compile with Cabal flag @buildExamples@\nyou get the executable @synthi-llvm-server@,\nthat is a realtime software synthesizer\nthat receives MIDI events via ALSA\nand in response plays some tones via ALSA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."llvm-extra" or (buildDepError "llvm-extra"))
          (hsPkgs."llvm-ht" or (buildDepError "llvm-ht"))
          (hsPkgs."type-level" or (buildDepError "type-level"))
          (hsPkgs."functional-arrow" or (buildDepError "functional-arrow"))
          (hsPkgs."HList" or (buildDepError "HList"))
          (hsPkgs."synthesizer-core" or (buildDepError "synthesizer-core"))
          (hsPkgs."synthesizer-alsa" or (buildDepError "synthesizer-alsa"))
          (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
          (hsPkgs."alsa-pcm" or (buildDepError "alsa-pcm"))
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."sample-frame-np" or (buildDepError "sample-frame-np"))
          (hsPkgs."sample-frame" or (buildDepError "sample-frame"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "synthi-llvm-example" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthi-llvm-server" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "synthi-llvm-test" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"));
          buildable = if flags.buildtests then true else false;
          };
        };
      };
    }