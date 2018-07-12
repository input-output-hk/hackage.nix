{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "temporal-csound";
          version = "0.4.1";
        };
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
        "temporal-csound" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.temporal-music-notation
            hsPkgs.csound-expression
            hsPkgs.csound-catalog
            hsPkgs.temporal-media
            hsPkgs.temporal-music-notation-western
          ];
        };
      };
    }