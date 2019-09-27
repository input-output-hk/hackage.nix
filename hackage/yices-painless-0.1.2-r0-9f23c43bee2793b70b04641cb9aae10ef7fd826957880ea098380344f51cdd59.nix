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
    flags = { yices-dynamic = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yices-painless"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart 2010.";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/yices-painless";
      url = "";
      synopsis = "An embedded language for programming the Yices SMT solver";
      description = "This library defines an embedded language in Haskell for programming\nthe Yices SMT solver.\n\nYices is an efficient SMT solver that decides the satisfiability of\narbitrary formulas containing uninterpreted function symbols with\nequality, linear real and integer arithmetic, scalar types,\nrecursive datatypes, tuples, records, extensional arrays, fixed-size\nbit-vectors, quantifiers, and lambda expressions. Yices also does\nMaxSMT (and, dually, unsat cores) and is competitive as an ordinary\nSAT and MaxSAT solver.\n\nThe embedded language embeds both terms, functions and types into\nHaskell, via a typed higher-order abstract syntax representation.\nPropositions in the embedding are represented as (typed) pure\nexpressions.\n\nSolution variables in the proposition (notionally, free variables)\nare bound an the outermost lambda term. Propositions constructed\nfrom logical primitives can then be executed by the solver to yield\na satisfying assignment to those free variables in the proposition.\nUninterpreted functions may be introduced via variables as well.\n\nMore information about Yices:\n\n* <http://yices.csl.sri.com/>\n\nThe primary interface is via the EDSL, \"Yices.Painless.Language\",\nhowever, low and medium-level bindings to the Yices C API are also provided\n(\"Yices.Painless.Base.C\" and \"Yices.Painless.Base\"). The\nmedium-level bindings add significant type and resource safety to\nthat which the C API provides.\n\nDocumentation for this package is available:\n\n* <http://www.galois.com/~dons/yices-painless/>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."strict-concurrency" or (buildDepError "strict-concurrency"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [
          (pkgs."yices" or (sysDepError "yices"))
          ] ++ (pkgs.lib).optional (flags.yices-dynamic) (pkgs."gmp" or (sysDepError "gmp"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }