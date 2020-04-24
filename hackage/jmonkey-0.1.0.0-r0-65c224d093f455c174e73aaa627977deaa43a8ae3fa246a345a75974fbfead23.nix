{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "jmonkey"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 peus";
      maintainer = "opyapeus@gmail.com";
      author = "peus";
      homepage = "https://github.com/opyapeus/jmonkey#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/opyapeus/jmonkey#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."casing" or ((hsPkgs.pkgs-errors).buildDepError "casing"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
          ];
        buildable = true;
        };
      exes = {
        "jmonkey-example-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."casing" or ((hsPkgs.pkgs-errors).buildDepError "casing"))
            (hsPkgs."clay" or ((hsPkgs.pkgs-errors).buildDepError "clay"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
            (hsPkgs."jmonkey" or ((hsPkgs.pkgs-errors).buildDepError "jmonkey"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jmonkey-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."casing" or ((hsPkgs.pkgs-errors).buildDepError "casing"))
            (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
            (hsPkgs."jmacro" or ((hsPkgs.pkgs-errors).buildDepError "jmacro"))
            (hsPkgs."jmonkey" or ((hsPkgs.pkgs-errors).buildDepError "jmonkey"))
            ];
          buildable = true;
          };
        };
      };
    }