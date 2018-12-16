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
      specVersion = "1.10";
      identifier = {
        name = "singleton-typelits";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mniip@mniip.com";
      author = "mniip";
      homepage = "https://github.com/mniip/singleton-typelits";
      url = "";
      synopsis = "Singletons and induction over GHC TypeLits";
      description = "Singletons and induction schemes over 'GHC.TypeLits.Nat'.\n\nWhile the TypeLits interface provided by GHC does allow case-analysing the\nvalues of the naturals ('GHC.TypeLits.natVal'), it does not facilitate writing\ntype-safe programs involving that AP, if one were to write:\n\n> case natVal (x :: Proxy n) of 0 -> foo x\n\nIn the RHS of this pattern match @n@ is equal to @0@ but this isn't something\nGHC can reason about, as this is an ordinary pattern match on an 'Integer'.\nIf the type of @foo@ was @Proxy 0 -> ...@ this wouldn't typecheck and one\nwould have to resort to @unsafeCoerce@. In order to make GHC infer something\nlike this, @natVal@ needs to return a GADT that includes proofs about the\nnatural number it refers to, such that when pattern matching on that GADT the\nproofs become available to the typechecker.\n\nThis package provides a handful of variants of such GADTs for overcoming this\ntype of issue, as well as functions to do typesafe induction on naturals\nwithout resorting to manual GADT unpacking. The most basic form of induction -\nPeano-style induction (P(0) and P(n) implies P(n + 1)) can be inefficient in\npractice on large numbers, so this package also provides more efficient binary\nand arbitrary-base induction schemes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }