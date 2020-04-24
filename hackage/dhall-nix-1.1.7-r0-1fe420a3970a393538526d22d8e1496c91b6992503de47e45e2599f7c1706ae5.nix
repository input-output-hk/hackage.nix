{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall-nix"; version = "1.1.7"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Dhall to Nix compiler";
      description = "Use this package if you want to compile Dhall expressions to the Nix language.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.Nix\" module if you want to use this package as a library\n\n* Use the @dhall-to-nix@ program from this package if you want an executable\n\nThe \"Dhall.Nix\" module also contains instructions for how to use this package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
          (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
          (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
          (hsPkgs."neat-interpolation" or ((hsPkgs.pkgs-errors).buildDepError "neat-interpolation"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "dhall-to-nix" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dhall" or ((hsPkgs.pkgs-errors).buildDepError "dhall"))
            (hsPkgs."dhall-nix" or ((hsPkgs.pkgs-errors).buildDepError "dhall-nix"))
            (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
            (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }