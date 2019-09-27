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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fin"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Oleg Grenrus";
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or (buildDepError "bifunctors"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "7.10")) [
          (hsPkgs."nats" or (buildDepError "nats"))
          (hsPkgs."void" or (buildDepError "void"))
          ];
        buildable = true;
        };
      tests = {
        "inspection" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."fin" or (buildDepError "fin"))
            (hsPkgs."inspection-testing" or (buildDepError "inspection-testing"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            ];
          buildable = if !(compiler.isGhc && (compiler.version).ge "8.0")
            then false
            else true;
          };
        };
      };
    }