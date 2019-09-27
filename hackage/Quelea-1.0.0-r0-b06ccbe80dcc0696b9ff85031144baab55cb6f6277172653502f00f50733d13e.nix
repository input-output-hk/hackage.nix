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
      identifier = { name = "Quelea"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, KC Sivaramakrishnan";
      maintainer = "Gowtham Kaki <http://gowthamk.github.io>";
      author = "KC Sivaramakrishnan <http://kcsrk.info>";
      homepage = "http://gowthamk.github.io/Quelea";
      url = "";
      synopsis = "Programming with Eventual Consistency over Cassandra.";
      description = "Quelea is a Haskell library that helps programmers develop highly\nscalable applications on the top of eventually consistent NoSQL stores,\nsuch as Cassandra. You can think of Quelea as a mediator between the\napplication programmer and the underlying NoSQL store. It understands both\nthe application requirements and the store semantics, and helps\nprogrammers use NoSQL stores in such a way so as to maximize performance\nand ensure correct application behaviour, both at the same time!  Among\nother things, Quelea library implements:\n\nA Domain-Specific Language (DSL) that lets NoSQL application programmers\ndeclare the consistency requirements of their applications as contracts\n(also called specifications)\n\nA static contract classification procedure that maps high-level\napplication contracts to appropriate low-level consistency guarantees\nprovided by the underlying NoSQL store, and\n\nA run-time that runs application operations after tuning the\nstore consistency to appropriate levels as determined by the\ncontract classification procedure.  While the\nimplementations of DSL and the static contract\nclassification components are largely independent of the\nactual NoSQL store used, the current implementation of\nrun-time component is tailor-made to work with the Cassandra\ndata store.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."cassandra-cql" or (buildDepError "cassandra-cql"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."zeromq4-haskell" or (buildDepError "zeromq4-haskell"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."z3" or (buildDepError "z3"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."uuid" or (buildDepError "uuid"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      };
    }