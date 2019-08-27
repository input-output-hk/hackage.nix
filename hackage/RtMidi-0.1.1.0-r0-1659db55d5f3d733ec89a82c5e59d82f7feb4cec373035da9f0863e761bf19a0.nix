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
    flags = { alsa = false; jack = false; core = false; mm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "RtMidi"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kohlrabi@kohlra.biz";
      author = "kohlrabi";
      homepage = "https://github.com/riottracker/RtMidi";
      url = "";
      synopsis = "";
      description = "Haskell wrapper for RtMidi, the lightweight, cross-platform MIDI I/O library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        libs = (([
          (pkgs."stdc++" or (sysDepError "stdc++"))
          ] ++ (pkgs.lib).optionals (flags.alsa) [
          (pkgs."asound" or (sysDepError "asound"))
          (pkgs."pthread" or (sysDepError "pthread"))
          ]) ++ (pkgs.lib).optional (flags.jack) (pkgs."jack" or (sysDepError "jack"))) ++ (pkgs.lib).optionals (flags.core) [
          (pkgs."CoreMIDI" or (sysDepError "CoreMIDI"))
          (pkgs."CoreAudio" or (sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or (sysDepError "CoreFoundation"))
          ];
        };
      };
    }