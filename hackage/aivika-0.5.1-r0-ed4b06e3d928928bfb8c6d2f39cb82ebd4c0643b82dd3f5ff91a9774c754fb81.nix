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
      specVersion = "1.2.0";
      identifier = { name = "aivika"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2012. David Sorokin <david.sorokin@gmail.com>";
      maintainer = "David Sorokin <david.sorokin@gmail.com>";
      author = "David Sorokin";
      homepage = "http://github.com/dsorokin/aivika";
      url = "";
      synopsis = "A multi-paradigm simulation library";
      description = "Aivika is a small simulation library that covers many paradigms.\nIt allows integrating a system of ordinary differential equations.\nAlso it can be applied to the Discrete Event Simulation. It supports\nthe event-oriented, process-oriented and activity-oriented paradigms.\nAivika also supports the Agent-based Modeling. Finally, it can be applied\nto System Dynamics.\n\nIt is possible due to using a very general approach when the basic\nmodeling entity is just a function of simulation time. The paradigms\nare mainly distinguished by sets of the functions that are used to\nmodel the activities. These sets are small and do not pretend\nto be comprehensive. Aivika is mostly a proof-of-concept project\nrather than a big library that knows everything.\n\nThe library widely uses monads. The dynamic system is represented as\na computation in the Dynamics monad. There is also the Process\nmonad to represent the discontinuous processes which can suspend\nat any time and then resume later. There is also the Simulation monad\nthat represents a simulation run, in which scope the previous\ntwo monads exist. Almost everything is expressed through these monads,\nincluding the event handlers, agent handlers and even integrals\nexcept for the parameters and statistics that already use the IO monad.\n\nThe PDF documentation is available at\n<https://github.com/dsorokin/aivika/blob/master/doc/aivika.pdf>.\nPlease note that the documentation is outdated and it corresponds to\nversion 0.2 but it can still be helpful.\n\nAlso please look at other two my packages\n<http://hackage.haskell.org/package/aivika-experiment> and\n<http://hackage.haskell.org/package/aivika-experiment-chart>\nthat complement the Aivika library.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      };
    }