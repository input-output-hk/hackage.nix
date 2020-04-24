{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "resin"; version = "0.2.0.1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "http://github.com/cartazio/resin";
      url = "";
      synopsis = "High performance variable binders";
      description = "High Performance Variable Binders library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."ralist" or ((hsPkgs.pkgs-errors).buildDepError "ralist"))
          ];
        buildable = true;
        };
      };
    }