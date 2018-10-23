{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wahsp";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nshaheed@ku.edu";
      author = "Nicholas Shaheed";
      homepage = "https://github.com/nshaheed/WebAudioHs/";
      url = "";
      synopsis = "A haskell binding of the Web Audio API ala blank-canvas";
      description = "@wahsp@ (Web Audio HaSkell Protocol) is a binding for Haskell to the\n<https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API Web Audio API>\nala @blank-canvas@.\nAudio sources, effects, etc. can be combined, manipulated, and otherwise\ncontrolled using haskell\nand are then rendered in the the browser (see the above link for browser\ncompatibility).\n\nExample:\n\n@\nmodule Main where\nimport Web.Audio\n\nmain :: IO ()\nmain\nmain = do\n\\ \\ 'webAudio' 3000 \$ \\\\doc -> do\n\\ \\ 'send' doc \$ do\n\\ \\ \\ \\ osc1  <- createOscillator 200 0 Sine\n\\ \\ \\ \\ gain1 <- createGain 0.5\n\n\\ \\ \\ \\ connect \$ osc1 .|. gain1 .||. eCtx\n\n\\ \\ \\ \\ start osc1\n@\n";
      buildType = "Simple";
    };
    components = {
      "wahsp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.natural-transformation)
          (hsPkgs.remote-monad)
          (hsPkgs.semigroups)
          (hsPkgs.aeson)
          (hsPkgs.data-default-class)
          (hsPkgs.text)
          (hsPkgs.wai-middleware-static)
          (hsPkgs.kansas-comet)
          (hsPkgs.scotty)
        ];
      };
    };
  }