{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "homotuple"; version = "0.1.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Kazuki Okamoto";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto";
      homepage = "https://github.com/kakkun61/homotuple#readme";
      url = "";
      synopsis = "Homotuple, all whose elements are the same type";
      description = "Homotuple, all whose elements are the same type";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."OneTuple" or ((hsPkgs.pkgs-errors).buildDepError "OneTuple"))
          (hsPkgs."Only" or ((hsPkgs.pkgs-errors).buildDepError "Only"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."single-tuple" or ((hsPkgs.pkgs-errors).buildDepError "single-tuple"))
          ];
        buildable = true;
        };
      };
    }