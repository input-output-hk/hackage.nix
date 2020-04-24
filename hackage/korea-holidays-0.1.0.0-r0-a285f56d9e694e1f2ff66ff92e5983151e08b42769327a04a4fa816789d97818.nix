{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "korea-holidays"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Kyung Mo Kweon";
      maintainer = "kkweon@gmail.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/githubuser/korea-holidays#readme";
      url = "";
      synopsis = "Korea Holidays";
      description = "Please see the README on GitHub at <https://github.com/kkweon/korea-holidays#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-extras" or ((hsPkgs.pkgs-errors).buildDepError "monad-extras"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "korea-holidays-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."korea-holidays" or ((hsPkgs.pkgs-errors).buildDepError "korea-holidays"))
            (hsPkgs."monad-extras" or ((hsPkgs.pkgs-errors).buildDepError "monad-extras"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }