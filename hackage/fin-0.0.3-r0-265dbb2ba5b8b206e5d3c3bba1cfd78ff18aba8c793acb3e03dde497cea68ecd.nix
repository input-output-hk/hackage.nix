{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fin"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Nat and Fin: peano naturals and finite numbers";
      description = "This package provides two simple types, and some tools to work with them.\nAlso on type level as @DataKinds@.\n\n@\n\\-- Peano naturals\ndata Nat = Z | S Nat\n\n\\-- Finite naturals\ndata Fin (n :: Nat) where\n\\    Z :: Fin ('S n)\n\\    S :: Fin n -> Fin ('Nat.S n)\n@\n\n[vec](https://hackage.haskell.org/package/vec) implements length-indexed\n(sized) lists using this package for indexes.\n\nThe \"Data.Fin.Enum\" module let's work generically with enumerations.\n\nSee [Hasochism: the pleasure and pain of dependently typed haskell programming](https://doi.org/10.1145/2503778.2503786)\nby Sam Lindley and Conor McBride for answers to /how/ and /why/.\nRead [APLicative Programming with Naperian Functors](https://doi.org/10.1007/978-3-662-54434-1_21)\nby Jeremy Gibbons for (not so) different ones.\n\n=== Similar packages\n\n* [finite-typelits](https://hackage.haskell.org/package/finite-typelits)\n. Is a great package, but uses @GHC.TypeLits@.\n\n* [type-natural](https://hackage.haskell.org/package/type-natural) depends\non @singletons@ package. @fin@ will try to stay light on the dependencies,\nand support as many GHC versions as practical.\n\n* [peano](https://hackage.haskell.org/package/peano) is very incomplete\n\n* [nat](https://hackage.haskell.org/package/nat) as well.\n\n* [PeanoWitnesses](https://hackage.haskell.org/package/PeanoWitnesses)\ndoesn't use @DataKinds@.\n\n* [type-combinators](https://hackage.haskell.org/package/type-combinators)\nis big package too.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.dec)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors)) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups)) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs.nats)
          (hsPkgs.void)
          ];
        };
      tests = {
        "inspection" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fin)
            (hsPkgs.inspection-testing)
            (hsPkgs.tagged)
            ];
          };
        };
      };
    }