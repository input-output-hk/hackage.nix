{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "csound-expression"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression";
      url = "";
      synopsis = "library to make electronic music";
      description = "Let's make music with text! We can use Csound to describe our music. Csound has so many fantastic sound generators.\nIt's very efficient. But sometimes Csound is too low level. So many details: integer identifiers for instruments\nand arrays, should I use control rate or audio rate signals, lack of abstractions, no nested expressions and it has limited set of types.\nThis library embeds Csound in Haskell. It's Csound code generator. We can use powerful Csound's primitives and glue them\ntogether with Haskell abstractions. Start with the module \"Csound.Base\". It contains basic types and functions.\n\nKey principles\n\n* Keep it simple and compact.\n\n* Try to hide low level csound's wiring as much as we can (no ids for ftables, instruments, global variables).\n\n* Don't describe the whole csound in all it's generality but give the user some handy tools\nto play with sound.\n\n* No distinction between audio and control rates on the type level. Derive all rates from the context.\nIf the user plugs signal to an opcode that expects an audio rate signal the argument is converted to the right rate.\n\n* Watch out for side-effects. There is a special type called 'SE'. It functions as 'IO' in Haskell.\n\n* Less typing, more music. Use short names for all types. Make library so that all expressions can be\nbuilt without type annotations. Make it simple for the compiler to derive all types. Don't use complex type classes.\n\n* Make low level opcode definitions simple. Let user define his own opcodes (if they are missing).\n\n* Make it independent from any Score-generation library. Let user choose his favorite library.\nBy the way, my favorite is the package 'temporal-music-notation' (but i'm biased as an author). You can\nfind it on hackage alongside with 'temporal-csound'. It brings 'csound-expression' and 'temporal-music-notation'\ntogether.\n\n* Ensure that output signal is limited by amplitude. Csound can produce signals with HUGE amplitudes. Little typo can damage your ears\nand your speakers. In generated code all signals are clipped by 0dbfs value. 0dbfs is set to 1. Just as in Pure Data. So 1 is absolute maximum value\nfor amplitude.\n\nFor the future\n\n* Make composable guis. Just plug the slider in the opcode and see it on the screen. Interactive instruments should be easy to make.\n\n* Remove score/instrument barrier. Let instrument play a score within a note and trigger\nother instruments.\n\n* Timing of events. User can set the beat rate and align events by beat events.\n\n* Set Csound flags with meaningful (well-typed) values. Derive as much as you can from the context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."Boolean" or ((hsPkgs.pkgs-errors).buildDepError "Boolean"))
          (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
          (hsPkgs."data-fix-cse" or ((hsPkgs.pkgs-errors).buildDepError "data-fix-cse"))
          ];
        buildable = true;
        };
      };
    }