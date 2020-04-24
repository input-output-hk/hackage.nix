{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "decidable"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/decidable#readme";
      url = "";
      synopsis = "Combinators for manipulating dependently-typed predicates.";
      description = "This library provides combinators and typeclasses for working and manipulating\ntype-level predicates in Haskell, which are represented as matchable type-level\nfunctions @k ~> Type@ from the @singletons@ library.  See \"Data.Type.Predicate\"\nfor a good starting point, and the documentation for 'Predicate' on how to\ndefine predicates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }