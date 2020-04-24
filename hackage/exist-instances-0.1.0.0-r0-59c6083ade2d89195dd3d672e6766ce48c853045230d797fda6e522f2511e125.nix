{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exist-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Instances for \"exist\" package (requires more language extensions and dependencies)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."constraint" or ((hsPkgs.pkgs-errors).buildDepError "constraint"))
          (hsPkgs."exist" or ((hsPkgs.pkgs-errors).buildDepError "exist"))
          (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
          ];
        buildable = true;
        };
      };
    }