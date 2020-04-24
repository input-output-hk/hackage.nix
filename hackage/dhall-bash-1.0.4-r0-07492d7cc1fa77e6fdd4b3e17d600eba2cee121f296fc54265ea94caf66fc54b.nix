{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall-bash"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Compile Dhall to Bash";
      description = "Use this package if you want to compile Dhall expressions to Bash.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.Bash\" module if you want to use this package as a library\n\n* Use the @dhall-to-bash@ if you want an executable\n\nThe \"Dhall.Bash\" module also contains instructions for how to use this\npackage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
          (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
          (hsPkgs."shell-escape" or ((hsPkgs.pkgs-errors).buildDepError "shell-escape"))
          (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "dhall-to-bash" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."dhall-bash" or ((hsPkgs.pkgs-errors).buildDepError "dhall-bash"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."trifecta" or ((hsPkgs.pkgs-errors).buildDepError "trifecta"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }