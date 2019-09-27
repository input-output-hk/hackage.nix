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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "temporal-csound"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/temporal-csound";
      url = "";
      synopsis = "library to make electronic music, brings together temporal-music-notation and csound-expression packages";
      description = "This package joins the forces of the packages temporal-music-notation\nand csound-expression.\nThe former package gives you handy primitives to arrange the events\nin sequences (like parallel or sequential composition, the tempo change,\nstandard names for notes and durations) and the later is used for\ncreation of musical timbres or software synthesizers.\n\nYou can find the short intro in the module \"Csound\".\n\n* The tutorial for csound-epression packageb (timbres):\n<https://github.com/anton-k/csound-expression/blob/master/tutorial/Index.md>\n\n* The tutorial for temporal-music-notation package (composition)\nand temporal-music-notation-western package (standard names for notes): see module \"Csound\"\n\nThis library defines standard note representation that let's you\ninvoke csound instruments with notes defined in the package temporal-music-notation.\n\nAlso this library provides you with some cool instruments to try the things out (see \"Csound.Patch\").\n\nWARNING: the library works best within ghci. The real-time sound rendering function dac spawns\na child process in the background which may continue to execute after you stop the main process that runs the programm.\nIt's not so in vim but it happens in the Sublime Editor and when you invoke runhaskell. So the best\nis to write you program in the separate file and then load it in the ghci and invoke the function main (which\nruns the sound rendering with the function dac).\n\nLibrary strives to be very simple. For example, to trigger the instrument with virtual midi-device is\nas simple as (in ghci with loaded modules \"Csound\" and \"Csound.Patch\")\n\n> Csound Csound.Patch> vdac \$ mul 0.2 \$ largeHall \$ onMidi stringPad\n\nIf you have a connected hardware midi-device you can just type:\n\n> Csound Csound.Patch> dac \$ mul 0.2 \$ largeHall \$ onMidi stringPad\n\nAnd you are ready to go. To play a C-major chord just do:\n\n> Csound Csound.Patch> dac \$ mul 0.2 \$ magicCave \$ mix \$ notes vibraphone2 \$ mel [c, e, g, high c, rest 15]\n\nHere we send the output to speakers (dac or vdac), scale the signal to make it quiter (mul),\nplace the signal in some room with reverberation (largeHall or magicCave), listen to midi\nevents (onMidi or onMidin for a midi on the given channel) or get the signal from scores (mix),\ntrigger the csound instrument (stringPad or vibraphone2) on events (notes) and construct\nthe events in sequence (mel). Events include notes (c, e, g - C major) and rests (rest).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."temporal-music-notation" or (buildDepError "temporal-music-notation"))
          (hsPkgs."csound-expression" or (buildDepError "csound-expression"))
          (hsPkgs."csound-catalog" or (buildDepError "csound-catalog"))
          (hsPkgs."temporal-media" or (buildDepError "temporal-media"))
          (hsPkgs."temporal-music-notation-western" or (buildDepError "temporal-music-notation-western"))
          ];
        buildable = true;
        };
      };
    }