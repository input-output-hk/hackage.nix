{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "lattices"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2010-2015 Maximilian Bolingbroke, 2016-2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Maximilian Bolingbroke <batterseapower@hotmail.com>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "http://github.com/phadej/lattices/";
      url = "";
      synopsis = "Fine-grained library for constructing and manipulating lattices";
      description = "In mathematics, a lattice is a partially ordered set in which every two\nelements @x@ and @y@ have a unique supremum (also called a least upper bound, join, or @x /\\\\ y@)\nand a unique infimum (also called a greatest lower bound, meet, or @x \\\\/ y@).\n\nThis package provide type-classes for different lattice types, as well\nas a class for the partial order.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.integer-logarithms)
          (hsPkgs.QuickCheck)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
          (hsPkgs.transformers)
          (hsPkgs.universe-base)
          (hsPkgs.universe-reverse-instances)
          (hsPkgs.unordered-containers)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.void)) ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.4" && (compiler.version).lt "7.5")) (hsPkgs.ghc-prim);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.containers)
            (hsPkgs.lattices)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            (hsPkgs.universe-base)
            (hsPkgs.universe-reverse-instances)
            (hsPkgs.unordered-containers)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
          };
        };
      };
    }