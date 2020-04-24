{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-pagination"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/yesod-pagination";
      url = "";
      synopsis = "Pagination in Yesod";
      description = "Easy pagination for Yesod.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."esqueleto" or ((hsPkgs.pkgs-errors).buildDepError "esqueleto"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."wai-test" or ((hsPkgs.pkgs-errors).buildDepError "wai-test"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            (hsPkgs."yesod-pagination" or ((hsPkgs.pkgs-errors).buildDepError "yesod-pagination"))
            (hsPkgs."yesod-test" or ((hsPkgs.pkgs-errors).buildDepError "yesod-test"))
            ];
          buildable = true;
          };
        };
      };
    }