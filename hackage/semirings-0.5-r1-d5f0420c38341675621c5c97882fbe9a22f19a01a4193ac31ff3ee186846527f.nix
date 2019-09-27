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
    flags = {
      hashable = true;
      containers = true;
      unordered-containers = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "semirings"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "http://github.com/chessai/semirings";
      url = "";
      synopsis = "two monoids as one, in holy haskimony";
      description = "Haskellers are usually familiar with monoids and semigroups. A monoid has an appending operation `<>` (or `mappend`),\nand an identity element, `mempty`. A semigroup has an appending `<>` operation, but does not require a `mempty` element.\n\nA Semiring has two appending operations, `plus` and `times`, and two respective identity elements, `zero` and `one`.\n\nMore formally, a Semiring R is a set equipped with two binary relations `+` and `*`, such that:\n\n(R,+) is a commutative monoid with identity element 0,\n\n(R,*) is a monoid with identity element 1,\n\n(*) left and right distributes over addition, and\n\nmultiplication by '0' annihilates R.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.10") [
          (hsPkgs."nats" or (buildDepError "nats"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (buildDepError "tagged"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.6.1") ((((pkgs.lib).optional (flags.containers) (hsPkgs."containers" or (buildDepError "containers")) ++ (pkgs.lib).optional (flags.hashable && (compiler.isGhc && (compiler.version).lt "7.8")) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.hashable && (compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.hashable && flags.unordered-containers) (hsPkgs."unordered-containers" or (buildDepError "unordered-containers")));
        buildable = true;
        };
      };
    }