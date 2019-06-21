{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "typelits-witnesses"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "(c) Justin Le 2018";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/typelits-witnesses";
      url = "";
      synopsis = "Existential witnesses, singletons, and classes for operations on GHC TypeLits";
      description = "This library contains:\n\n*   A small specialized subset of the *singletons* library as it pertains to\n`Nat` and `Symbol`, for when you need some simple functionality without\nwanting to invoke the entire *singletons* library.\n*   Operations for manipulating these singletons and `KnownNat` and\n`KnownSymbol` instances, such as addition and multiplication of\nsingletons/`KnownNat` instances.\n*   Operations for the comparison of `Nat`s in a way that works well with\n*GHC.TypeLits*'s different comparison systems.  This is helpful for\nbridging together libraries that use different systems; this functionality\nis not yet provided by *singletons*.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.dependent-sum) ]; };
      };
    }