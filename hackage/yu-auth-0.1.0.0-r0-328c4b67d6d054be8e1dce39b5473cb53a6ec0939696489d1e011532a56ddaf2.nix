{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { client = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yu-auth"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "Auth module for Yu.";
      description = "Helper of auth via SHA for Yu";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."yu-utils" or ((hsPkgs.pkgs-errors).buildDepError "yu-utils"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          ];
        buildable = true;
        };
      tests = {
        "test-core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yu-utils" or ((hsPkgs.pkgs-errors).buildDepError "yu-utils"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."yu-auth" or ((hsPkgs.pkgs-errors).buildDepError "yu-auth"))
            ];
          buildable = true;
          };
        "test-auth" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yu-auth" or ((hsPkgs.pkgs-errors).buildDepError "yu-auth"))
            (hsPkgs."yu-utils" or ((hsPkgs.pkgs-errors).buildDepError "yu-utils"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-wai" or ((hsPkgs.pkgs-errors).buildDepError "hspec-wai"))
            (hsPkgs."yesod-test" or ((hsPkgs.pkgs-errors).buildDepError "yesod-test"))
            (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            ];
          buildable = if flags.client then false else true;
          };
        };
      };
    }