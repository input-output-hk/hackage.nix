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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "midi"; version = "0.2.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/MIDI";
      url = "";
      synopsis = "Handling of MIDI messages and files";
      description = "MIDI is the Musical Instrument Digital Interface.\nThe package contains definition of realtime and file MIDI messages,\nreading and writing MIDI files,\nand some definitions from the General MIDI standard.\nIt contains no sending and receiving of MIDI messages.\nFor this purpose see the @alsa-seq@, @jack@, @PortMidi@, @hmidi@ packages.\nFor music composition with MIDI output, see @haskore@.\nAlternative packages are @HCodecs@, @zmidi-core@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."event-list" or (buildDepError "event-list"))
          (hsPkgs."non-negative" or (buildDepError "non-negative"))
          (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monoid-transformer" or (buildDepError "monoid-transformer"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ]);
        };
      exes = { "test" = {}; };
      };
    }