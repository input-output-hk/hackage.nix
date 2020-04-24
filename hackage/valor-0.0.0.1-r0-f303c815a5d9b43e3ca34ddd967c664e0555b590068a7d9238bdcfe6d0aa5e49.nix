{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "valor"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2018 Luka Hadžiegrić";
      maintainer = "reygoch@gmail.com";
      author = "Luka Hadžiegrić";
      homepage = "https://github.com/reygoch/valor#readme";
      url = "";
      synopsis = "Simple general structured validation library";
      description = "Please see the README on GitHub at <https://github.com/reygoch/valor#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "valor-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."checkers" or ((hsPkgs.pkgs-errors).buildDepError "checkers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-checkers" or ((hsPkgs.pkgs-errors).buildDepError "hspec-checkers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."valor" or ((hsPkgs.pkgs-errors).buildDepError "valor"))
            ];
          buildable = true;
          };
        };
      };
    }