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
    flags = { nonoteoff = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hmidi"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Balazs Komuves";
      maintainer = "bkomuves+hmidi@gmail.com";
      author = "Balazs Komuves";
      homepage = "";
      url = "";
      synopsis = "Binding to the OS level MIDI services";
      description = "Partial implementation of the MIDI 1.0 standard to communicate\nwith physical or virtual MIDI devices, eg. MIDI keyboards.\nSupported operating systems are Mac OS X and Win32 (not tested\nunder Leopard and Vista). See also the alsa-midi library for similar\nfunction under Linux. Please note that there was no effort made (yet) to\nbe compatible with the other existing Haskell MIDI libraries.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (buildDepError "Win32"));
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."winmm" or (sysDepError "winmm"));
        frameworks = (pkgs.lib).optionals (system.isOsx) [
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          (pkgs."CoreAudio" or (sysDepError "CoreAudio"))
          (pkgs."CoreMIDI" or (sysDepError "CoreMIDI"))
          ];
        };
      };
    }