{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shakespeare-sass"; version = "0.1.0.2"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "brcha@gna.org";
      author = "Filip Brcic";
      homepage = "https://github.com/brcha/shakespeare-sass";
      url = "";
      synopsis = "SASS support for Shakespeare and Yesod";
      description = "SASS support for Shakespeare and Yesod";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."hsass" or ((hsPkgs.pkgs-errors).buildDepError "hsass"))
          (hsPkgs."hlibsass" or ((hsPkgs.pkgs-errors).buildDepError "hlibsass"))
          ];
        buildable = true;
        };
      };
    }