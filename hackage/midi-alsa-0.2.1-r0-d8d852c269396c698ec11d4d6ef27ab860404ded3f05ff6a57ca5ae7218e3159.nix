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
    flags = { splitbase = true; buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "midi-alsa"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/MIDI";
      url = "";
      synopsis = "Convert between datatypes of the midi and the alsa packages";
      description = "MIDI is the Musical Instrument Digital Interface,\nALSA is the Advanced Linux Sound Architecture.\nThis package provides accessors to data structures\nof the ALSA sequencer interface\nvia the more specific types from the @midi@ package.\nThe package also contains a orphan instances\nfor the @alsa-seq:Event@ type\nof the @midi:Message.Class.Check@ and @midi:Message.Class.Query@ classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."alsa-seq" or (buildDepError "alsa-seq"))
          (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      };
    }