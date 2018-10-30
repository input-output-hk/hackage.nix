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
        name = "diplomacy";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aovieth@gmail.com";
      author = "Alexander Vieth";
      homepage = "https://github.com/avieth/diplomacy";
      url = "";
      synopsis = "The board game Diplomacy, spoken in Haskell";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.HUnit)
          (hsPkgs.TypeNat)
          (hsPkgs.parsec)
        ];
      };
    };
  }