{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tiphys"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2016 Ladislav Lhotka";
      maintainer = "lhotka@nic.cz";
      author = "Ladislav Lhotka";
      homepage = "https://github.com/llhotka/tiphys";
      url = "";
      synopsis = "Navigating and editing JSON data";
      description = "A library that enables navigation in aeson Values and their editing.\n\nThe zipper API is described in the @Data.Aeson.Zipper@ module.\n\n(A note on naming: Tiphys was the steersman and navigator on Jason's Argo.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."tiphys" or ((hsPkgs.pkgs-errors).buildDepError "tiphys"))
            ];
          buildable = true;
          };
        };
      };
    }