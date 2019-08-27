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
      identifier = { name = "Etage"; version = "0.1.4"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2010 Mitar Milutinovic";
      maintainer = "mitar.haskell@tnode.com";
      author = "Mitar Milutinovic";
      homepage = "http://mitar.tnode.com";
      url = "";
      synopsis = "A general data-flow framework";
      description = "A general data-flow framework featuring nondeterminism, laziness and neurological pseudo-terminology. It can be\nused for example for data-flow computations or event propagation networks. It tries hard to aide type checking and to\nallow proper initialization and cleanup so that interfaces to input and output devices (data or events producers or\nconsumers) can be made (so that created models\\/systems\\/networks can be used directly in real world applications, for\nexample robots).\n\nIts main goal is to model complex neural networks with more biological realism. Namely that impulses do\ntake time to travel and neuron responses are also not instantaneous. And of course that neural systems are in\nits base nondeterministic and that some level of determinism is build upon that. All this of course makes reasoning\nabout such networks even harder (impossible?).\n\nThis framework is in fact just a simple abstraction of Haskell threads and data passing between them through\nchannels with threads' initialization and cleanup wrapped into a Haskell type class.\n\nFeel free to contribute or suggest additional features or (example) programs or to create interfaces to other modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."operational" or (buildDepError "operational"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          ];
        };
      };
    }