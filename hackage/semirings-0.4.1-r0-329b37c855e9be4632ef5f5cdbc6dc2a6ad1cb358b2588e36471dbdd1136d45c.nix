{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      hashable = true;
      containers = true;
      unordered-containers = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "semirings"; version = "0.4.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.10") [
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.6.1") ((pkgs.lib.optional (flags.containers) (hsPkgs."containers" or (errorHandler.buildDepError "containers")) ++ pkgs.lib.optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ pkgs.lib.optional (flags.hashable && flags.unordered-containers) (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers")));
        buildable = true;
      };
    };
  }