{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "clist"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/clist.hs";
      url = "";
      synopsis = "Counted list";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."peano" or ((hsPkgs.pkgs-errors).buildDepError "peano"))
          ];
        buildable = true;
        };
      };
    }