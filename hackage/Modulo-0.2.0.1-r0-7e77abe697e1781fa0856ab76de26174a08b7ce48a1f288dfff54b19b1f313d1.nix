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
      specVersion = "1.8";
      identifier = {
        name = "Modulo";
        version = "0.2.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "murzin.nikolay@gmail.com";
      author = "Nikolay Murzin";
      homepage = "";
      url = "";
      synopsis = "Modular arithmetic via Numeric-Prelude";
      description = "Smart way of calculating long expressions in modular arithmetics.\nWatch examples at the end of a source code.\nUse NoImplicitPrelude language parameter with this module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.numeric-prelude)
        ];
      };
    };
  }