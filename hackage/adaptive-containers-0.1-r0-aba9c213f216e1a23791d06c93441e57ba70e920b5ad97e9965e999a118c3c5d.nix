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
      specVersion = "1.2.3";
      identifier = {
        name = "adaptive-containers";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Don Stewart (dons@galois.com)";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/adaptive-containers";
      url = "";
      synopsis = "Self optimizing container types";
      description = "Self optimizing polymorphic container types.\nWe use type families to specialize polymorphic container types to\nspecific representations via class-associated data types.\nA self-optimizing pair, for example, will unpack the constructors,\nyielding a representation for (Int,Char) requiring 8 bytes, instead\nof 24.\nCurrently supported adaptive types: pairs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }