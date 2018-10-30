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
      specVersion = "1.6";
      identifier = {
        name = "hswip";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "embedding prolog in haskell";
      description = "Library for embedding swi-prolog in haskell inspired by pyswip.\nYou should install swi-prolog in order to use the library.\nIt is recommended to use swi-prolog-5.10 or newer.\nIf you encounter troubles related to libswipl linking, you need to fix extra-lib-dirs parameter in hswipr.cabal to find libswipl.a in your system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
        ];
        libs = [
          (pkgs."swipl")
          (pkgs."readline")
          (pkgs."ncurses")
        ];
      };
    };
  }