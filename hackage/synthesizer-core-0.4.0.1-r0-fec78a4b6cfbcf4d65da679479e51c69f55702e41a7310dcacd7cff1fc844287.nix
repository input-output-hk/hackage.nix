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
    flags = {
      splitbase = true;
      category = true;
      optimizeadvanced = true;
      buildprofilers = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer-core"; version = "0.4.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing coded in Haskell: Low level part";
      description = "Low level audio signal processing\nused by the other synthesizer packages.\nThe routines can be really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://code.haskell.org/haskore/revised/synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."sample-frame-np" or (buildDepError "sample-frame-np"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."numeric-quest" or (buildDepError "numeric-quest"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."stream-fusion" or (buildDepError "stream-fusion"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."special-functors" or (buildDepError "special-functors"))
            ]);
        };
      exes = {
        "test" = {};
        "speedtest" = {};
        "speedtest-exp" = {
          depends = (pkgs.lib).optionals (flags.splitbase) [
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "speedtest-simple" = {};
        };
      };
    }