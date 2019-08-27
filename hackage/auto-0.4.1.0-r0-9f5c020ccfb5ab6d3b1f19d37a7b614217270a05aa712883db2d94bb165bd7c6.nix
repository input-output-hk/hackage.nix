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
      identifier = { name = "auto"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "(c) Justin Le 2015";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/auto";
      url = "";
      synopsis = "Denotative, locally stateful programming DSL & platform";
      description = "(Up to date documentation is maintained at\n<https://mstksg.github.com/auto>)\n\nRead the README first!\n<https://github.com/mstksg/auto/blob/master/README.md>\n, for motivating examples, and concrete explanations of\nthings described here.\n\n/auto/ is a Haskell DSL and platform providing\ndeclarative, compositional, denotative semantics for\ndiscrete-step, locally stateful, interactive programs,\ngames, and automations, with implicitly derived\nserialization.  It is suited for any domain where either\nthe input or the output can be described as a stream of\nvalues: a stream of input events, output views, etc.\n\n/auto/ works by providing a type that encapsulates\n\"value stream transformers\", or locally stateful\nfunctions; by specifying your program as a (potentially\ncyclic) graph of relationships between value streams, you\ncreate a way of \"declaring\" a system based simply on\nstatic relationships between quantities.\n\nInstead of a \"state monad\" type solution, where all\nfunctions have access to a rigid global state, /auto/\nworks by specifying relationships which each exist\nindependently and on their own, without any global state.\n\nA more fuller exposition is in the `README.md`, in this\nproject directory and also online at\n<https://github.com/mstksg/auto/blob/master/README.md>;\nyou can get started by reading the tutorial, which is\nalso in this project directory in the `tutorial`\ndirectory, and also incidentally online at\n<https://github.com/mstksg/auto/blob/master/tutorial/tutorial.md>.\nAlso, check out the\n<https://github.com/mstksg/auto-examples auto-examples>\nrepository on github for plenty of real-world and toy\nexamples to learn from; I've also done a\n<blog.jle.im/entries/series/+all-about-auto blog series>\non this library, for examples and full tutorials!\n\nSupport available on freenode's #haskell-auto,\n#haskell-game, and also on the github issue\ntracker for the source repository.\n\nImport \"Control.Auto\" to begin!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."profunctors" or (buildDepError "profunctors"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      };
    }