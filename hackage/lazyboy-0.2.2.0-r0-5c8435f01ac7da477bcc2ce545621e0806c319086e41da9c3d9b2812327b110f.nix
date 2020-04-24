{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "lazyboy"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Rose";
      maintainer = "rose@lain.org.uk";
      author = "Rose";
      homepage = "https://github.com/ix/lazyboy#readme";
      url = "";
      synopsis = "An EDSL for programming the Game Boy.";
      description = "An EDSL for programming the Nintendo Game Boy. <https://github.com/ix/lazyboy#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."microstache" or ((hsPkgs.pkgs-errors).buildDepError "microstache"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "lazyboy-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."lazyboy" or ((hsPkgs.pkgs-errors).buildDepError "lazyboy"))
            (hsPkgs."microstache" or ((hsPkgs.pkgs-errors).buildDepError "microstache"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }