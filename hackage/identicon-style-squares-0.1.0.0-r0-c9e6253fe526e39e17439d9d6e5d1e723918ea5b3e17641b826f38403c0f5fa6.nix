{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "identicon-style-squares"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "francygazz@gmail.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/identicon-styles";
      url = "";
      synopsis = "Squares style for the identicon package";
      description = "An identicon style with colored squares, similar to the\ngithub default avatars. The number of square in a single\nidenticon can be configured.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."identicon" or ((hsPkgs.pkgs-errors).buildDepError "identicon"))
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."polyvariadic" or ((hsPkgs.pkgs-errors).buildDepError "polyvariadic"))
          ];
        buildable = true;
        };
      tests = {
        "squares" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."identicon" or ((hsPkgs.pkgs-errors).buildDepError "identicon"))
            (hsPkgs."identicon-style-squares" or ((hsPkgs.pkgs-errors).buildDepError "identicon-style-squares"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            ];
          buildable = true;
          };
        };
      };
    }