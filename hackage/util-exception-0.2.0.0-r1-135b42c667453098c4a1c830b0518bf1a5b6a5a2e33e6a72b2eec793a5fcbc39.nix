{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "util-exception"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Exceptional utilities";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."basic" or ((hsPkgs.pkgs-errors).buildDepError "basic"))
          (hsPkgs."control" or ((hsPkgs.pkgs-errors).buildDepError "control"))
          (hsPkgs."lifted-base-tf" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base-tf"))
          (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
          ];
        buildable = true;
        };
      };
    }