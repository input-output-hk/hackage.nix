{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "relational-record"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2017 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Meta package of Relational Record";
      description = "Meta package to install Relational Record quickly";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."product-isomorphic" or ((hsPkgs.pkgs-errors).buildDepError "product-isomorphic"))
          (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
          (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
          (hsPkgs."relational-query-HDBC" or ((hsPkgs.pkgs-errors).buildDepError "relational-query-HDBC"))
          (hsPkgs."persistable-types-HDBC-pg" or ((hsPkgs.pkgs-errors).buildDepError "persistable-types-HDBC-pg"))
          ];
        buildable = true;
        };
      };
    }