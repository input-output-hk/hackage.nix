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
      specVersion = "1.2";
      identifier = { name = "IOSpec"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <w.s.swierstra@uu.nl>";
      author = "Wouter Swierstra, Yusaku Hashimoto, Nikolay Amiantov";
      homepage = "";
      url = "";
      synopsis = "A pure specification of the IO monad.";
      description = "This package consists of several modules, that give a\npure specification of functions in the IO monad:\n* \"Test.IOSpec.Fork\": a pure specification of\n'forkIO'.\n* \"Test.IOSpec.IORef\": a pure specification of most\nfunctions that create and manipulate on 'IORefs'.\n* \"Test.IOSpec.MVar\": a pure specification of most\nfunctions that create and manipulate and 'MVars'.\n* \"Test.IOSpec.STM\": a pure specification of\n'atomically' and the 'STM' monad.\n* \"Test.IOSpec.Teletype\": a pure specification of\n'getChar', 'putChar', and several related\nPrelude functions.\nBesides these modules containing the specifications,\nthere are a few other important modules:\n* \"Test.IOSpec.Types\": defines the 'IOSpec' type and\nseveral amenities.\n* \"Test.IOSpec.VirtualMachine\": defines a virtual\nmachine on which to execute pure specifications.\n* \"Test.IOSpec.Surrogate\": a drop-in replacement for\nthe other modules. Import this and recompile your\ncode once you've finished testing and debugging.\nThere are several well-documented examples included\nwith the source distribution.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."Stream" or (buildDepError "Stream"))
          ];
        };
      };
    }