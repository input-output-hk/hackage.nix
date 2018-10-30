{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      hashable = true;
      containers = true;
      unordered-containers = true;
      vector = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "semirings";
        version = "0.2.1.0";
      };
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
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.integer-gmp)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.10") [
          (hsPkgs.nats)
          (hsPkgs.transformers)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.8") (hsPkgs.tagged)) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "7.6.1") (((pkgs.lib.optional (flags.containers) (hsPkgs.containers) ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable)) ++ pkgs.lib.optional (flags.hashable && flags.unordered-containers) (hsPkgs.unordered-containers)) ++ pkgs.lib.optional (flags.vector) (hsPkgs.vector));
      };
    };
  }