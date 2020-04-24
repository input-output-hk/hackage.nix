{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "category-traced"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "None";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Traced monoidal categories";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."categories" or ((hsPkgs.pkgs-errors).buildDepError "categories"))
          ];
        buildable = true;
        };
      };
    }