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
        name = "freer";
        version = "0.2.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Allele Dev 2016";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "https://gitlab.com/queertypes/freer";
      url = "";
      synopsis = "Implementation of the Freer Monad";
      description = "Freer is an implementation of \"Freer Monads, More Extensible\nEffects\"\n\nThe key features of Freer are:\n\n* An efficient effect system for Haskell - as a library!\n\n* Implementations for several common Haskell monad instances:\n\n* Core components for defining your own Effects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "freer-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.freer)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.freer)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "core" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.freer)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.free)
          ];
        };
      };
    };
  }