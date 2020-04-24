{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "conferer-provider-dhall"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lucas6246@gmail.com";
      author = "Lucas David Traverso";
      homepage = "https://github.com/ludat/conferer#readme";
      url = "";
      synopsis = "Configuration for reading dhall files";
      description = "Library to abstract the parsing of many haskell config values from different config sources";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
          (hsPkgs."conferer-provider-json" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-json"))
          (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
          (hsPkgs."dhall-json" or ((hsPkgs.pkgs-errors).buildDepError "dhall-json"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "conferer-provider-dhall-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conferer" or ((hsPkgs.pkgs-errors).buildDepError "conferer"))
            (hsPkgs."conferer-provider-dhall" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-dhall"))
            (hsPkgs."conferer-provider-json" or ((hsPkgs.pkgs-errors).buildDepError "conferer-provider-json"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."dhall-json" or ((hsPkgs.pkgs-errors).buildDepError "dhall-json"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }