{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tonatona-persistent-postgresql";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "2018 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto, Dennis Gosnell";
      homepage = "https://github.com/tonatona-project/tonatona#readme";
      url = "";
      synopsis = "tonatona plugin for accessing PostgreSQL database.";
      description = "Tonatona plugin for accessing PostgreSQL database. This package provides a tonatona plugin for accessing PostgreSQL database. This plugin uses persistent to actually accessing PostgreSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
          (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
            (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "persistent-postgresql"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
            (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
            ];
          buildable = true;
          };
        };
      };
    }