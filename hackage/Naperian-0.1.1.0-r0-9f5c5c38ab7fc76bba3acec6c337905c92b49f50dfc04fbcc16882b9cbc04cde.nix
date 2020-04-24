{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Naperian"; version = "0.1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "dominic@steinitz.org";
      author = "Austin Seipp";
      homepage = "https://github.com/idontgetoutmuch/Naperian";
      url = "";
      synopsis = "Naperian Functors for APL-like programming";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }