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
    flags = { pkgconfig = true; jackfree = true; buildexamples = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "jack"; version = "0.7.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann, Stefan Kersten, Soenke Hahn <soenkehahn@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Bindings for the JACK Audio Connection Kit <http://jackaudio.org/>.\nIt has support both for PCM audio and MIDI handling.\n\nIn order to adapt to your system,\nyou may have to disable pkgConfig or jackFree cabal flags.\n\nYou should compile your clients with @ghc --make -O2 -threaded ...@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."enumset" or (buildDepError "enumset"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        libs = (pkgs.lib).optional (!flags.pkgconfig) (pkgs."jack" or (sysDepError "jack"));
        pkgconfig = (pkgs.lib).optional (flags.pkgconfig) (pkgconfPkgs."jack" or (pkgConfDepError "jack"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "jack-amplify" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-capture" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-impulse-train" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-midimon" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-melody" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."non-negative" or (buildDepError "non-negative"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "jack-synth" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."jack" or (buildDepError "jack"))
            (hsPkgs."midi" or (buildDepError "midi"))
            (hsPkgs."event-list" or (buildDepError "event-list"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."storablevector" or (buildDepError "storablevector"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }