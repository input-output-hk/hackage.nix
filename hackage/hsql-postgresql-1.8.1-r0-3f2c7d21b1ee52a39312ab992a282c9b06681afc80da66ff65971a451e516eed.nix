{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "hsql-postgresql"; version = "1.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@googlemail.com";
      author = "Krasimir Angelov <kr.angelov@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell Interface to PostgreSQL via the PQ library.";
      description = "PostgreSQL driver for HSQL.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsql" or ((hsPkgs.pkgs-errors).buildDepError "hsql"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          ];
        libs = [ (pkgs."pq" or ((hsPkgs.pkgs-errors).sysDepError "pq")) ];
        buildable = true;
        };
      };
    }