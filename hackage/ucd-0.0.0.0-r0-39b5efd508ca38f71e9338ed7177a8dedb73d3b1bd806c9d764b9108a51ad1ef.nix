{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ucd"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "https://github.com/strake/ucd.hs";
      url = "";
      synopsis = "See README for more info";
      description = "See README for more info";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.containers or (pkgs.buildPackages.containers or ((hsPkgs.pkgs-errors).buildToolDepError "containers")))
        (hsPkgs.buildPackages.regex-applicative or (pkgs.buildPackages.regex-applicative or ((hsPkgs.pkgs-errors).buildToolDepError "regex-applicative")))
        (hsPkgs.buildPackages.util or (pkgs.buildPackages.util or ((hsPkgs.pkgs-errors).buildToolDepError "util")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
            (hsPkgs."ucd" or ((hsPkgs.pkgs-errors).buildDepError "ucd"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."util" or ((hsPkgs.pkgs-errors).buildDepError "util"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."ucd" or ((hsPkgs.pkgs-errors).buildDepError "ucd"))
            ];
          buildable = true;
          };
        };
      };
    }