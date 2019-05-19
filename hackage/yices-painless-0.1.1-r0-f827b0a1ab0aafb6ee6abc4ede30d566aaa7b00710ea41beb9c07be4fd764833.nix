{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { yices-dynamic = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "yices-painless"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart 2010.";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/yices-painless";
      url = "";
      synopsis = "An embedded language for programming the Yices SMT solver";
      description = "This library defines an embedded language in Haskell for programming\nthe Yices SMT solver.\n\nYices is an efficient SMT solver that decides the satisfiability of\narbitrary formulas containing uninterpreted function symbols with\nequality, linear real and integer arithmetic, scalar types,\nrecursive datatypes, tuples, records, extensional arrays, fixed-size\nbit-vectors, quantifiers, and lambda expressions. Yices also does\nMaxSMT (and, dually, unsat cores) and is competitive as an ordinary\nSAT and MaxSAT solver.\n\nThe embedded language embeds both terms and types into Haskell, via\na typed higher-order abstract syntax representation. Propositions in\nthe embedding are represented as (typed) pure expressions.\n\nSolution variables in the proposition (notionally, free variables)\nare bound an the outermost lambda term. Propositions constructed\nfrom logical primitives can then be executed by the solver to yield\na satisfying assignment to those free variables in the proposition.\n\nMore information about Yices:\n\n* <http://yices.csl.sri.com/>\n\nThe primary interface is via the EDSL, \"Yices.Painless.Language\",\nhowever, low and medium-level bindings to the Yices C API are also provided\n(\"Yices.Painless.Base.C\" and \"Yices.Painless.Base\"). The\nmedium-level bindings add significant type and resource safety to\nthat which the C API provides.\n\nDocumentation for this package is available:\n\n* <http://www.galois.com/~dons/yices-painless/>\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.strict-concurrency)
          (hsPkgs.containers)
          (hsPkgs.vector)
          ];
        libs = [
          (pkgs."yices")
          ] ++ (pkgs.lib).optional (flags.yices-dynamic) (pkgs."gmp");
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
          ];
        };
      };
    }