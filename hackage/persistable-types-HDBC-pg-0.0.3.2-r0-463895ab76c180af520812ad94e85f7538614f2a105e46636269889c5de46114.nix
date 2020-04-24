{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persistable-types-HDBC-pg"; version = "0.0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "HDBC and Relational-Record instances of PostgreSQL extended types";
      description = "This package contains HDBC Convertible instances and\nRelational-Record persistable instances of PostgreSQL extended types\nSupported extended types: inet, cidr";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."text-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "text-postgresql"))
          (hsPkgs."convertible" or ((hsPkgs.pkgs-errors).buildDepError "convertible"))
          (hsPkgs."HDBC" or ((hsPkgs.pkgs-errors).buildDepError "HDBC"))
          (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
          (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or ((hsPkgs.pkgs-errors).buildDepError "relational-query-HDBC"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
            (hsPkgs."relational-query-HDBC" or ((hsPkgs.pkgs-errors).buildDepError "relational-query-HDBC"))
            (hsPkgs."text-postgresql" or ((hsPkgs.pkgs-errors).buildDepError "text-postgresql"))
            (hsPkgs."persistable-types-HDBC-pg" or ((hsPkgs.pkgs-errors).buildDepError "persistable-types-HDBC-pg"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"));
          buildable = true;
          };
        };
      };
    }