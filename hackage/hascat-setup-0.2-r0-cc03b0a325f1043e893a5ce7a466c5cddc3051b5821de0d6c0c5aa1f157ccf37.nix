{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hascat-setup"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Florian Micheler 2010";
      maintainer = "fmi@informatik.uni-kiel.de";
      author = "Florian Micheler";
      homepage = "";
      url = "";
      synopsis = "Hascat Installation helper";
      description = "This program installs  Hascat into a given folder";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hascat-lib" or ((hsPkgs.pkgs-errors).buildDepError "hascat-lib"))
          (hsPkgs."hascat-system" or ((hsPkgs.pkgs-errors).buildDepError "hascat-system"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
          ];
        buildable = true;
        };
      exes = {
        "hascat-setup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hascat-lib" or ((hsPkgs.pkgs-errors).buildDepError "hascat-lib"))
            (hsPkgs."hascat-system" or ((hsPkgs.pkgs-errors).buildDepError "hascat-system"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."plugins" or ((hsPkgs.pkgs-errors).buildDepError "plugins"))
            ];
          buildable = true;
          };
        };
      };
    }