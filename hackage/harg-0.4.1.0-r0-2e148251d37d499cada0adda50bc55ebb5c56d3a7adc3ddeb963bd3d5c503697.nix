{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "harg"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Alex Peitsinis";
      maintainer = "alexpeitsinis@gmail.com";
      author = "Alex Peitsinis";
      homepage = "https://github.com/alexpeits/harg";
      url = "";
      synopsis = "Haskell program configuration using higher kinded data";
      description = "Please see the README on GitHub at <https://github.com/alexpeits/harg#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."barbies" or ((hsPkgs.pkgs-errors).buildDepError "barbies"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."higgledy" or ((hsPkgs.pkgs-errors).buildDepError "higgledy"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "harg-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."harg" or ((hsPkgs.pkgs-errors).buildDepError "harg"))
            ];
          buildable = true;
          };
        "readme-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."barbies" or ((hsPkgs.pkgs-errors).buildDepError "barbies"))
            (hsPkgs."higgledy" or ((hsPkgs.pkgs-errors).buildDepError "higgledy"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."harg" or ((hsPkgs.pkgs-errors).buildDepError "harg"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or ((hsPkgs.pkgs-errors).buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        };
      };
    }