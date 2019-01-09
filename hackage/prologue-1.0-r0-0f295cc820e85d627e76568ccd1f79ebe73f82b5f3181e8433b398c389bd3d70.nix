{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prologue"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2014 Wojciech Danilo";
      maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
      author = "Wojciech Danilo";
      homepage = "https://github.com/wdanilo/prologue";
      url = "";
      synopsis = "Replacement for the Haskell's Prelude, exposing more commonly used functions and patching old GHC ones to behave in the newest GHC's way.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.cond)
          (hsPkgs.convert)
          (hsPkgs.data-default)
          (hsPkgs.data-repr)
          (hsPkgs.errors)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.text)
          (hsPkgs.string-qq)
          ];
        };
      };
    }