{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "fplll"; version = "0.1.0.0"; };
      license = "LGPL-2.1-or-later";
      copyright = "";
      maintainer = "ldr709@gmail.com";
      author = "Lance Roy";
      homepage = "https://github.com/ldr709/haskell-fplll";
      url = "";
      synopsis = "Haskell bindings to <https://fplll.github.io/fplll/ fplll>";
      description = "";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hgmp" or ((hsPkgs.pkgs-errors).buildDepError "hgmp"))
          (hsPkgs."semibounded-lattices" or ((hsPkgs.pkgs-errors).buildDepError "semibounded-lattices"))
          (hsPkgs."lattices" or ((hsPkgs.pkgs-errors).buildDepError "lattices"))
          ];
        pkgconfig = [
          (pkgconfPkgs."fplll" or ((hsPkgs.pkgs-errors).pkgConfDepError "fplll"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."fplll" or ((hsPkgs.pkgs-errors).buildDepError "fplll"))
            ];
          buildable = true;
          };
        };
      };
    }