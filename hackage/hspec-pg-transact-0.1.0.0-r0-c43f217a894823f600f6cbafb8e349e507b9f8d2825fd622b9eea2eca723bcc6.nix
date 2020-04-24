{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hspec-pg-transact"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/hspec-pg-transact#readme";
      url = "";
      synopsis = "Helpers for creating database tests with hspec and pg-transact";
      description = "Helpers for creating database tests with hspec and pg-transact";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."tmp-postgres" or ((hsPkgs.pkgs-errors).buildDepError "tmp-postgres"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."pg-transact" or ((hsPkgs.pkgs-errors).buildDepError "pg-transact"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      };
    }