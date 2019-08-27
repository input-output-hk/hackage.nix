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
      identifier = { name = "gulcii"; version = "0.2.0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://gitorious.org/maximus/gulcii";
      url = "";
      synopsis = "graphical untyped lambda calculus interactive interpreter";
      description = "GULCII is an untyped lambda calculus interpreter supporting interactive\nmodification of a running program with graphical display of graph reduction.\n\nThere are three variants of lambda abstraction: lazy, strict, and copy:\n\n@> \\x . f x x    -- x is evaluated lazily with sharing@\n@> \\x ! f x x    -- x is evaluated strictly and shared@\n@> \\x ? f x x    -- x is copied before any evaluation@\n\nThere is additional syntax sugar for natural numbers and lists, using\n<http://en.wikipedia.org/wiki/Mogensen%E2%80%93Scott_encoding#Scott_encoding>:\n\n@> [0,1,2,3]@\n\nThere is a small standard library based loosely around the Haskell Prelude,\nwith additions geared towards MIDI generation for live-coding music, implemented\nusing a mechanism similar to 'Debug.Trace.trace':\n\n@> \\x y . &#123; print : x &#125; y@\n\nQuick start:\n\n> gulcii\n> :load mars.gu\n> main\n> :quit\n\nIf you have Pure-data and Timidity, try:\n\n> timidity -iA -Oj &\n> pd -alsamidi ~/.cabal/share/gulcii-0.2.0.1/extra/fudi2midi.pd &\n> gulcii | pdsend 8765\n\nSee also: live-sequencer which has many more features (but no sharing during\nevaluation).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gulcii" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            ];
          };
        };
      };
    }