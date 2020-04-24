{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hswip"; version = "0.3"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        libs = [
          (pkgs."swipl" or ((hsPkgs.pkgs-errors).sysDepError "swipl"))
          (pkgs."readline" or ((hsPkgs.pkgs-errors).sysDepError "readline"))
          (pkgs."ncurses" or ((hsPkgs.pkgs-errors).sysDepError "ncurses"))
          ];
        buildable = true;
        };
      };
    }