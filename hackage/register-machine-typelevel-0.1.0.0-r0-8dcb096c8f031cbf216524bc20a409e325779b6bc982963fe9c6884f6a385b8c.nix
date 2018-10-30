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
        name = "register-machine-typelevel";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kiss.csongor.kiss@gmail.com";
      author = "Csongor Kiss";
      homepage = "https://github.com/kcsongor/register-machine-type";
      url = "";
      synopsis = "A computationally universal register machine implementation at the type-level";
      description = "Computationally universal register machine implementation at the type-level.\nThis formulation is identical to the [Lambek\nmachine](https://en.wikipedia.org/wiki/Counter_machine), with the addition\nof an explicit `Halt` instruction, for convenience.\nThis means (or rather, this is made possible by the fact) that that\nHaskell's type system is Turing complete (at least with\nTypeFamilies and UndecidableInstances).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }