{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tonatona-google-server-api";
        version = "0.1.2.0";
        };
      license = "MIT";
      copyright = "2019 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/tonatona-google-server-api#readme";
      url = "";
      synopsis = "tonatona plugin for google-server-api";
      description = "Tonatona plugin for [google-server-api](https://hackage.haskell.org/package/google-server-api). This package provides a tonatona plugin to use Google API for server to server applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."google-server-api" or ((hsPkgs.pkgs-errors).buildDepError "google-server-api"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
          (hsPkgs."tonalude" or ((hsPkgs.pkgs-errors).buildDepError "tonalude"))
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
            (hsPkgs."google-server-api" or ((hsPkgs.pkgs-errors).buildDepError "google-server-api"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."tonalude" or ((hsPkgs.pkgs-errors).buildDepError "tonalude"))
            (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
            (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."google-server-api" or ((hsPkgs.pkgs-errors).buildDepError "google-server-api"))
            (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."persistent-sqlite" or ((hsPkgs.pkgs-errors).buildDepError "persistent-sqlite"))
            (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
            (hsPkgs."servant-client" or ((hsPkgs.pkgs-errors).buildDepError "servant-client"))
            (hsPkgs."tonalude" or ((hsPkgs.pkgs-errors).buildDepError "tonalude"))
            (hsPkgs."tonaparser" or ((hsPkgs.pkgs-errors).buildDepError "tonaparser"))
            (hsPkgs."tonatona" or ((hsPkgs.pkgs-errors).buildDepError "tonatona"))
            ];
          buildable = true;
          };
        };
      };
    }