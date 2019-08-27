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
      specVersion = "1.10";
      identifier = { name = "wahsp"; version = "0.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."natural-transformation" or (buildDepError "natural-transformation"))
          (hsPkgs."remote-monad" or (buildDepError "remote-monad"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."wai-middleware-static" or (buildDepError "wai-middleware-static"))
          (hsPkgs."kansas-comet" or (buildDepError "kansas-comet"))
          (hsPkgs."scotty" or (buildDepError "scotty"))
          ];
        };
      };
    }