{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "syntactic"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "http://projects.haskell.org/syntactic/";
      url = "";
      synopsis = "Generic abstract syntax, and utilities for embedded languages";
      description = "This library provides:\n\n* Generic representation and manipulation of abstract syntax\nusing a practical encoding of open data types (based on Data\nTypes à la Carte [1])\n\n* Utilities for analyzing and transforming generic syntax\n\n* General variable binding constructs\n\n* Utilities for building extensible embedded languages based\non generic syntax\n\n* A small proof-of-concept implementation of the embedded\nlanguage Feldspar [2] (see the @Examples@ directory)\n\nNote: The library is probably mostly useful for /functional/\nobject languages, such as Feldspar. Currently, it does not\nsupport cyclic programs.\n\n\\[1\\] /Data types à la carte/, by Wouter Swierstra, in\n/Journal of Functional Programming/, 2008\n\n\\[2\\] <http://hackage.haskell.org/package/feldspar-language>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-hash" or ((hsPkgs.pkgs-errors).buildDepError "data-hash"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          ];
        buildable = true;
        };
      };
    }