{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "safe-exceptions-checked"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mitchell Rosen";
      maintainer = "Mitchell Rosen";
      author = "Edsko de Vries,\nAdam Gundry,\nMitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/safe-exceptions-checked#readme";
      url = "";
      synopsis = "Safe, checked exceptions";
      description = "Machinery for throwing and catching both pure and impure synchronous exceptions. Based on <https://www.well-typed.com/blog/2015/07/checked-exceptions/ Lightweight Checked Exceptions> by Edsko de Vries and Adam Gundry.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."safe-exceptions-checked" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions-checked"))
            ];
          buildable = true;
          };
        };
      };
    }