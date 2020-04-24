{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "eventful-test-helpers"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Common module used for eventful tests";
      description = "Common module used for eventful tests";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."eventful-core" or ((hsPkgs.pkgs-errors).buildDepError "eventful-core"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-casing" or ((hsPkgs.pkgs-errors).buildDepError "aeson-casing"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          ];
        buildable = true;
        };
      };
    }