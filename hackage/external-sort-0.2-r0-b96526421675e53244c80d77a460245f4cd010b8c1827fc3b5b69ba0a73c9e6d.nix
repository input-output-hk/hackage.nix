{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "external-sort"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomashartman1 at gmail dot com";
      author = "Ben \"Midfield\" Lee";
      homepage = "";
      url = "";
      synopsis = "Sort large arrays on your hard drive. Kind of like the unix util sort.";
      description = "Sort arrays too large to fit in ram, by using your hard drive.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."EdisonCore" or ((hsPkgs.pkgs-errors).buildDepError "EdisonCore"))
          (hsPkgs."EdisonAPI" or ((hsPkgs.pkgs-errors).buildDepError "EdisonAPI"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }