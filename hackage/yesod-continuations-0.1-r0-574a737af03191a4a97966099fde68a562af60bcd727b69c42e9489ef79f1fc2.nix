{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "yesod-continuations"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "matt@softmechanics.net";
      author = "Matt Brown";
      homepage = "https://github.com/softmechanics/yesod-continuations/";
      url = "";
      synopsis = "Continuations for Yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."datetime" or ((hsPkgs.pkgs-errors).buildDepError "datetime"))
          (hsPkgs."hashmap" or ((hsPkgs.pkgs-errors).buildDepError "hashmap"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."system-uuid" or ((hsPkgs.pkgs-errors).buildDepError "system-uuid"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = { "yesodContinuationsTest" = { buildable = true; }; };
      };
    }