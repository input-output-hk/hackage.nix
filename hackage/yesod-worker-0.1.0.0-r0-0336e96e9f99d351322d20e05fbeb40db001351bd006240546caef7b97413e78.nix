{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-worker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "jamesdabbs@gmail.com";
      author = "James Dabbs";
      homepage = "https://github.com/jamesdabbs/yesod-worker#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."keenser" or ((hsPkgs.pkgs-errors).buildDepError "keenser"))
          (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
          (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
          ];
        buildable = true;
        };
      tests = {
        "yesod-worker-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."yesod-worker" or ((hsPkgs.pkgs-errors).buildDepError "yesod-worker"))
            ];
          buildable = true;
          };
        };
      };
    }