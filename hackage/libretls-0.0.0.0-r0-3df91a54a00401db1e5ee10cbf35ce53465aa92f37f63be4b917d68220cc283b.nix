{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "libretls"; version = "0.0.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/libressl-hs";
      url = "";
      synopsis = "libtls bindings";
      description = "A thin wrapper about the libtls wrapper of libressl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."monad-ste" or ((hsPkgs.pkgs-errors).buildDepError "monad-ste"))
          ];
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."libtls" or ((hsPkgs.pkgs-errors).pkgConfDepError "libtls"));
        buildable = true;
        };
      tests = {
        "hunit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."libressl" or ((hsPkgs.pkgs-errors).buildDepError "libressl"))
            ];
          buildable = true;
          };
        };
      };
    }