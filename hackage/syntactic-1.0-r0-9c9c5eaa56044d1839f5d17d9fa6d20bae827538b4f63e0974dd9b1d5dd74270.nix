{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "syntactic";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011-2012, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "http://projects.haskell.org/syntactic/";
      url = "";
      synopsis = "Generic abstract syntax, and utilities for embedded languages";
      description = "This library provides:\n\n* Generic representation and manipulation of abstract syntax\n\n* Composable AST representations (partly based on Data Types à\nla Carte [1])\n\n* A collection of common syntactic constructs, including\nvariable binding constructs\n\n* Utilities for analyzing and transforming generic abstract\nsyntax\n\n* Utilities for building extensible embedded languages based\non generic syntax\n\n* A small proof-of-concept implementation of the embedded\nlanguage Feldspar [2] (see the @Examples@ directory)\n\nFor details, see the paper\n\\\"A Generic Abstract Syntax Model for Embedded Languages\\\"\n(ICFP 2012,\n<http://www.cse.chalmers.se/~emax/documents/axelsson2012generic.pdf>).\n\nThe maturity of this library varies between different modules.\nThe core part (\"Language.Syntactic\") is rather stable, but many\nof the other modules are in a much more experimental state.\n\n\\[1\\] W. Swierstra. Data Types à la Carte.\n/Journal of Functional Programming/, 18(4):423-436, 2008,\n<http://dx.doi.org/10.1017/S0956796808006758>.\n\n\\[2\\] <http://hackage.haskell.org/package/feldspar-language>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.constraints)
          (hsPkgs.data-hash)
          (hsPkgs.ghc-prim)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.tuple)
        ];
      };
    };
  }