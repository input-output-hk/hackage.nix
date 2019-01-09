{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prologue"; version = "3.2.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2016-2018 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/prologue";
      url = "";
      synopsis = "Better, more general Prelude exporting common utilities.";
      description = "Replacement for the Haskell's Prelude, exposing more commonly used functions and patching old GHC ones to behave in the newest GHC's way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.comonad)
          (hsPkgs.cond)
          (hsPkgs.container)
          (hsPkgs.convert)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.deriving-compat)
          (hsPkgs.either)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.functor-utils)
          (hsPkgs.ghc-prim)
          (hsPkgs.impossible)
          (hsPkgs.lens)
          (hsPkgs.lens-utils)
          (hsPkgs.monoid)
          (hsPkgs.mtl)
          (hsPkgs.neat-interpolation)
          (hsPkgs.placeholders)
          (hsPkgs.pointed)
          (hsPkgs.pretty-show)
          (hsPkgs.primitive)
          (hsPkgs.raw-strings-qq)
          (hsPkgs.recursion-schemes)
          (hsPkgs.semigroupoids)
          (hsPkgs.string-qq)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.typelevel)
          (hsPkgs.vector)
          ];
        };
      };
    }