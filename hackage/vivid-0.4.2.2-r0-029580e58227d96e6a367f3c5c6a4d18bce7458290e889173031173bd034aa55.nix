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
      specVersion = "1.8";
      identifier = { name = "vivid"; version = "0.4.2.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Sound synthesis with SuperCollider";
      description = "Music and sound synthesis with SuperCollider.\n\nExample usage (after installing and booting SuperCollider):\n\n@\n&#123;&#45;\\# LANGUAGE DataKinds, ExtendedDefaultRules \\#&#45;&#125;\n@\n\n> import Vivid\n>\n> playSong :: VividAction m => m ()\n> playSong = do\n>    fork \$ do\n>       s0 <- synth theSound (36 ::I \"note\")\n>       wait 1\n>       free s0\n>    s1 <- synth theSound (60 ::I \"note\")\n>    forM_ [62,66,64] \$ \\note -> do\n>       wait (1/4)\n>       set s1 (note ::I \"note\")\n>    wait (1/4)\n>    free s1\n>\n> theSound :: SynthDef '[\"note\"]\n> theSound = sd (0 ::I \"note\") \$ do\n>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10\n>    s <- 0.1 ~* sinOsc (freq_ \$ midiCPS (V::V \"note\") ~+ wobble)\n>    out 0 [s,s]\n>\n> main :: IO ()\n> main = do\n>    putStrLn \"Simplest:\"\n>    playSong\n>\n>    putStrLn \"With precise timing:\"\n>    doScheduledIn 0.1 playSong\n>    wait 1\n>\n>    putStrLn \"Written to a file, non-realtime synthesis:\"\n>    putStrLn \"(Need to quit the running server for NRT)\"\n>    quitSCServer\n>    writeNRT \"song.wav\" playSong";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."vivid-osc" or (buildDepError "vivid-osc"))
          (hsPkgs."vivid-supercollider" or (buildDepError "vivid-supercollider"))
          ];
        };
      };
    }