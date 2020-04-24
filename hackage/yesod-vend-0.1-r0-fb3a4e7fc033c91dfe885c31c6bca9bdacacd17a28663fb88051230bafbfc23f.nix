{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yesod-vend"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gtener@gmail.com";
      author = "Krzysztof Skrzętnicki";
      homepage = "";
      url = "";
      synopsis = "Simple CRUD classes for easy view creation for Yesod";
      description = "Simple CRUD classes for easy view creation for Yesod. See @Yesod.VEND@ for more informations and description how to use it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod-platform" or ((hsPkgs.pkgs-errors).buildDepError "yesod-platform"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          ];
        buildable = true;
        };
      };
    }