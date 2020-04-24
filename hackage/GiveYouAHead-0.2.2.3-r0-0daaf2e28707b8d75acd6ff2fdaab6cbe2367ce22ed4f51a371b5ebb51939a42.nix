{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "GiveYouAHead"; version = "0.2.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "qinka@live.com";
      author = "Qinka";
      homepage = "https://github.com/Qinka/GiveYouAHead/";
      url = "";
      synopsis = "to auto-do somethings";
      description = "to auto-do somethings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          ];
        buildable = true;
        };
      };
    }