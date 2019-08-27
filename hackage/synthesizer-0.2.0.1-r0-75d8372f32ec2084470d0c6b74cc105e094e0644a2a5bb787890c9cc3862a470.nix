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
      buildexamples = false;
      buildprofilers = false;
      buildtests = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "synthesizer"; version = "0.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Synthesizer";
      url = "";
      synopsis = "Audio signal processing coded in Haskell";
      description = "Audio signal processing\nfeaturing both low-level functions\nand high-level functions which use physical units,\nabstract from the sample rate and are really fast\ndue to StorableVector, Stream-like list type and aggressive inlining.\nFor an interface to Haskore see <http://darcs.haskell.org/haskore-synthesizer/>.\nFor introductory examples see \"Synthesizer.Plain.Tutorial\"\nand \"Synthesizer.Generic.Tutorial\".\nFor an overview of the organization of the package\nand the discussion of various design issues see \"Synthesizer.Overview\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."numeric-prelude" or (buildDepError "numeric-prelude"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."storable-record" or (buildDepError "storable-record"))
          (hsPkgs."sox" or (buildDepError "sox"))
          (hsPkgs."gnuplot" or (buildDepError "gnuplot"))
          (hsPkgs."numeric-quest" or (buildDepError "numeric-quest"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."storablevector" or (buildDepError "storablevector"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if flags.category
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."process" or (buildDepError "process"))
            ]
          else if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."process" or (buildDepError "process"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."special-functors" or (buildDepError "special-functors"))
              ]);
        };
      exes = {
        "demonstration" = {};
        "traumzauberbaum" = {};
        "test" = {};
        "fusiontest" = {};
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