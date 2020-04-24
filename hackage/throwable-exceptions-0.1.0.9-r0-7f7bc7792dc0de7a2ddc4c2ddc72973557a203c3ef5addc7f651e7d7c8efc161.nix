{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "throwable-exceptions"; version = "0.1.0.9"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000.develop@gmail.com";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-throwable-exceptions#README.md";
      url = "";
      synopsis = "throwable-exceptions gives the easy way to throw exceptions";
      description = "throwable-exceptions gives the easy way to throw exceptions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
            (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."throwable-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "throwable-exceptions"))
            ];
          buildable = true;
          };
        };
      };
    }