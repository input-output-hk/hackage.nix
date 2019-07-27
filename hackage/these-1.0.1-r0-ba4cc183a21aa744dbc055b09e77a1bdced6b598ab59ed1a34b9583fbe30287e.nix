{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      aeson = true;
      assoc = true;
      semigroupoids = true;
      quickcheck = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "these"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "An either-or-both data type.";
      description = "This package provides a data type @These a b@ which can hold a value of either\ntype or values of each type. This is usually thought of as an \"inclusive or\"\ntype (contrasting @Either a b@ as \"exclusive or\") or as an \"outer join\" type\n(contrasting @(a, b)@ as \"inner join\").\n\n@\ndata These a b = This a | That b | These a b\n@\n\nSince version 1, this package was split into parts:\n\n* <https://hackage.haskell.org/package/semialign semialign> For @Align@ and @Zip@ type-classes.\n\n* <https://hackage.haskell.org/package/semialign-indexed semialign-indexed> For @SemialignWithIndex@ class, providing @ialignWith@ and @izipWith@.\n\n* <https://hackage.haskell.org/package/these-lens these-lens> For lens combinators.\n\n* <http://hackage.haskell.org/package/monad-chronicle monad-chronicle> For transformers variant of @These@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.deepseq)
          (hsPkgs.base-compat)
          (hsPkgs.hashable)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.5") (hsPkgs.ghc-prim)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) ([
          (hsPkgs.semigroups)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.10") (hsPkgs.transformers))) ++ (pkgs.lib).optionals (flags.aeson) [
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          ]) ++ (pkgs.lib).optional (flags.assoc) (hsPkgs.assoc)) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs.semigroupoids)) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs.QuickCheck);
        };
      };
    }