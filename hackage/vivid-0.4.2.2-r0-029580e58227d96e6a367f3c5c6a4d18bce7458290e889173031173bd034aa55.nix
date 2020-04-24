{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."vivid-osc" or ((hsPkgs.pkgs-errors).buildDepError "vivid-osc"))
          (hsPkgs."vivid-supercollider" or ((hsPkgs.pkgs-errors).buildDepError "vivid-supercollider"))
          ];
        buildable = true;
        };
      };
    }