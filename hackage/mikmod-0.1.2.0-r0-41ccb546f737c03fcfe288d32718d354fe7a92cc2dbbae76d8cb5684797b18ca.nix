{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mikmod"; version = "0.1.2.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "evanrinehart@gmail.com";
      author = "Evan Rinehart";
      homepage = "https://github.com/evanrinehart/mikmod";
      url = "";
      synopsis = "bindings to libmikmod";
      description = "MikMod bindings for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }