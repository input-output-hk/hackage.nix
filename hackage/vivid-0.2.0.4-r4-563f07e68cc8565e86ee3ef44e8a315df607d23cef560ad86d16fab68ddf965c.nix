{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "vivid";
        version = "0.2.0.4";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Sound synthesis with SuperCollider";
      description = "Music and sound synthesis with SuperCollider.\n\nExample usage:\n\n> import Vivid\n>\n> theSound = sd (0 ::I \"note\") \$ do\n>    wobble <- sinOsc (freq_ 5) ? KR ~* 10 ~+ 10\n>    s <- 0.1 ~* sinOsc (freq_ \$ midiCPS (V::V \"note\") ~+ wobble)\n>    out 0 [s,s]\n>\n> playSong = do\n>    fork \$ do\n>       s0 <- synth theSound (36 ::I \"note\")\n>       wait 1\n>       free s0\n>    s1 <- synth theSound (60 ::I \"note\")\n>    forM_ [62,66,64] \$ \\note -> do\n>       wait (1/4)\n>       set s1 (note ::I \"note\")\n>    wait (1/4)\n>    free s1\n>\n> main = do\n>    putStrLn \"Simplest:\"\n>    playSong\n>\n>    putStrLn \"With precise timing:\"\n>    doScheduledIn 0.1 playSong\n>    wait 1\n>\n>    putStrLn \"Written to a file, non-realtime synthesis:\"\n>    putStrLn \"(Need to quit the running server for NRT)\"\n>    quitSCServer\n>    writeNRT \"/tmp/song.wav\" playSong";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
    };
  }