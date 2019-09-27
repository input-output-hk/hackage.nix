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
      identifier = { name = "stable-heap"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015 Jake McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "http://hub.darcs.net/jmcarthur/stable-heap";
      url = "";
      synopsis = "Purely functional stable heaps (fair priority queues)";
      description = "This library provides a purely functional implementation of\nstable heaps (fair priority queues). The data structure is a\ncousin of the pairing heap which maintains a sequential\nordering of the keys. Insertion can be to either end of the\nheap, as though it is a deque, and it can be split on the\nleft-most occurrence of the minimum key.\n\nThe current state of the package is fairly barebones. It will\nbe fleshed out later.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (buildDepError "base")) ];
        buildable = true;
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."fingertree" or (buildDepError "fingertree"))
            (hsPkgs."heaps" or (buildDepError "heaps"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."pqueue" or (buildDepError "pqueue"))
            (hsPkgs."stable-heap" or (buildDepError "stable-heap"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }