{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "twitter-types-lens"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "taka@himura.jp";
      author = "Takahiro HIMURA";
      homepage = "https://github.com/himura/twitter-types";
      url = "";
      synopsis = "Twitter JSON types (lens powered)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."twitter-types" or ((hsPkgs.pkgs-errors).buildDepError "twitter-types"))
          ];
        buildable = true;
        };
      };
    }