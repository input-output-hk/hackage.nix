{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "aern2-real"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2017 Michal Konecny";
      maintainer = "Michal Konecny <mikkonecny@gmail.com>";
      author = "Michal Konecny";
      homepage = "https://github.com/michalkonecny/aern2";
      url = "";
      synopsis = "Exact real numbers via Cauchy sequences and MPFR";
      description = "Exact real numbers as Cauchy sequences of MPFR approximations.\n\nSee module \"AERN2.Real\" for further documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."mixed-types-num" or ((hsPkgs.pkgs-errors).buildDepError "mixed-types-num"))
          (hsPkgs."aern2-mp" or ((hsPkgs.pkgs-errors).buildDepError "aern2-mp"))
          ];
        buildable = true;
        };
      exes = {
        "aern2-real-benchOp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mixed-types-num" or ((hsPkgs.pkgs-errors).buildDepError "mixed-types-num"))
            (hsPkgs."aern2-mp" or ((hsPkgs.pkgs-errors).buildDepError "aern2-mp"))
            (hsPkgs."aern2-real" or ((hsPkgs.pkgs-errors).buildDepError "aern2-real"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        "aern2-generate-netlog-elm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."elm-bridge" or ((hsPkgs.pkgs-errors).buildDepError "elm-bridge"))
            (hsPkgs."mixed-types-num" or ((hsPkgs.pkgs-errors).buildDepError "mixed-types-num"))
            (hsPkgs."aern2-mp" or ((hsPkgs.pkgs-errors).buildDepError "aern2-mp"))
            (hsPkgs."aern2-real" or ((hsPkgs.pkgs-errors).buildDepError "aern2-real"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aern2-real" or ((hsPkgs.pkgs-errors).buildDepError "aern2-real"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }