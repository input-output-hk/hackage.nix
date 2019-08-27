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
      vector = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "semirings"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2018 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "http://github.com/chessai/semirings";
      url = "";
      synopsis = "two monoids as one, in holy haskimony";
      description = "In mathematics, a semiring is an algebraic structure consisting of a set together with two binary operations, one commutative and one associative. A semiring has two identity elements respective to its operations. Thus a semiring can be seen as a combination of two monoids, a commutative monoid and an associative monoid.";
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
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or (buildDepError "tagged"))) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.6.1") ((((pkgs.lib).optional (flags.containers) (hsPkgs."containers" or (buildDepError "containers")) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.hashable && flags.unordered-containers) (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))) ++ (pkgs.lib).optional (flags.vector) (hsPkgs."vector" or (buildDepError "vector")));
        };
      };
    }