{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-gitrev"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/yesod-gitrev";
      url = "";
      synopsis = "A subsite for displaying git information.";
      description = "(Please see the readme) https://github.com/DanBurton/yesod-gitrev#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."githash" or ((hsPkgs.pkgs-errors).buildDepError "githash"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."yesod-gitrev" or ((hsPkgs.pkgs-errors).buildDepError "yesod-gitrev"))
            ];
          buildable = true;
          };
        };
      };
    }