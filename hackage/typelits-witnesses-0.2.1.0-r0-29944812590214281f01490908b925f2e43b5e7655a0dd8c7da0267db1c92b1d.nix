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
        name = "typelits-witnesses";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "(c) Justin Le 2016";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/typelits-witnesses";
      url = "";
      synopsis = "Existential witnesses, singletons, and classes for operations on GHC TypeLits";
      description = "Provides witnesses for 'KnownNat' and 'KnownSymbol'\ninstances for various operations on GHC TypeLits - in\nparticular, the arithmetic operations defined in\n\"GHC.TypeLits\", and also for type-level lists of\n'KnownNat' and 'KnownSymbol' instances.\n\nThis is useful for situations where you have\n@'KnownNat' n@, and you want to prove to GHC\n@'KnownNat' (n + 3)@, or @'KnownNat' (2*n + 4)@.\n\nIt's also useful for when you want to work with type\nlevel lists of 'KnownNat' or 'KnownSymbol' instances and\nsingletons for traversing them, and be able to apply\nanalogies of 'natVal' and 'symbolVal' to lists with\nanalogies for 'SomeNat' and 'SomeSymbol'.\n\nSee README for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.constraints)
          (hsPkgs.reflection)
          (hsPkgs.transformers)
        ];
      };
    };
  }