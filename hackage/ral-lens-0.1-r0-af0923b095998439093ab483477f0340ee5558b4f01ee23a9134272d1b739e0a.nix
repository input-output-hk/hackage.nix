{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ral-lens"; version = "0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Length-indexed random access lists: lens utilities.";
      description = "This package provides [lenses](https://hackage.haskell.org/package/lens) and instances\nfor data types in [ral](https://hackage.haskell.org/package/ral) package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bin" or ((hsPkgs.pkgs-errors).buildDepError "bin"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."ral" or ((hsPkgs.pkgs-errors).buildDepError "ral"))
          ];
        buildable = true;
        };
      };
    }