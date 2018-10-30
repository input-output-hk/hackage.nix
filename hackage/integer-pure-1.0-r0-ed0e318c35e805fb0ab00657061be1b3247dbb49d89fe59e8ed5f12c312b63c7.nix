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
      specVersion = "1.2";
      identifier = {
        name = "integer-pure";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "author";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://projects.haskell.org/~malcolm/integer-pure";
      url = "";
      synopsis = "A pure-Haskell implementation of arbitrary-precision Integers.";
      description = "A pure-Haskell implementation of the arbitrary-precision Integer\nnumeric type.  Originally developed for a compiler that does not\nsupply a builtin Integer type, this package could also be useful\nfor people who want to avoid ghc's builtin integer-gmp for\nlicencing reasons.";
      buildType = "Simple";
    };
    components = {
      "library" = {};
    };
  }