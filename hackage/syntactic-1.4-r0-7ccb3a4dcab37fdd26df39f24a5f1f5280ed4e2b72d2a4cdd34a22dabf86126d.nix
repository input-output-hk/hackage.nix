{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "syntactic"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2012, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "http://projects.haskell.org/syntactic/";
      url = "";
      synopsis = "Generic abstract syntax, and utilities for embedded languages";
      description = "This library provides:\n\n* Generic representation and manipulation of abstract syntax\n\n* Composable AST representations (partly based on Data Types à\nla Carte [1])\n\n* A collection of common syntactic constructs, including\nvariable binding constructs\n\n* Utilities for analyzing and transforming generic abstract\nsyntax\n\n* Utilities for building extensible embedded languages based\non generic syntax\n\nFor more information about the core functionality, see\n\\\"A Generic Abstract Syntax Model for Embedded Languages\\\"\n(ICFP 2012):\n\n* Paper:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic.pdf>\n\n* Slides:\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic-slides.pdf>\n\nFor a practical example of how to use the library, see the\nproof-of-concept implementation Feldspar EDSL in the @examples@\ndirectory. (The real Feldspar [2] is also implemented using\nSyntactic.)\n\nThe maturity of this library varies between different modules.\nThe core part (\"Language.Syntactic\") is rather stable, but many\nof the other modules are in a much more experimental state.\n\n\\[1\\] W. Swierstra. Data Types à la Carte.\n/Journal of Functional Programming/, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>.\n\n\\[2\\] <http://hackage.haskell.org/package/feldspar-language>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."data-hash" or ((hsPkgs.pkgs-errors).buildDepError "data-hash"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          ];
        buildable = true;
        };
      tests = {
        "NanoFeldsparEval" = {
          depends = [
            (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        "NanoFeldsparTree" = {
          depends = [
            (hsPkgs."syntactic" or ((hsPkgs.pkgs-errors).buildDepError "syntactic"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-golden" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-golden"))
            ];
          buildable = true;
          };
        };
      };
    }