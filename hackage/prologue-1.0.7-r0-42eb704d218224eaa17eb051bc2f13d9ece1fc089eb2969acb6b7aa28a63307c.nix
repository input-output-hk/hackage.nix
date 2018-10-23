{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "prologue";
        version = "1.0.7";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2014 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/prologue";
      url = "";
      synopsis = "Better, more general Prelude exporting common utilities.";
      description = "Replacement for the Haskell's Prelude, exposing more commonly used functions and patching old GHC ones to behave in the newest GHC's way.";
      buildType = "Simple";
    };
    components = {
      "prologue" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.cond)
          (hsPkgs.container)
          (hsPkgs.convert)
          (hsPkgs.data-default)
          (hsPkgs.data-layer)
          (hsPkgs.errors)
          (hsPkgs.lens)
          (hsPkgs.lens-utils)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.text)
          (hsPkgs.string-qq)
          (hsPkgs.vector)
          (hsPkgs.tuple)
          (hsPkgs.functor-utils)
          (hsPkgs.impossible)
          (hsPkgs.typelevel)
        ];
      };
    };
  }