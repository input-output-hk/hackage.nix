{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "relational-query"; version = "0.8.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Typeful, Modular, Relational, algebraic query engine";
      description = "This package contiains typeful relation structure and\nrelational-algebraic query building DSL which can\ntranslate into SQL query.\nSupported query features are below:\n- Type safe query building\n- Restriction, Join, Aggregation\n- Modularized relations\n- Typed placeholders";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."time-locale-compat" or ((hsPkgs.pkgs-errors).buildDepError "time-locale-compat"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."sql-words" or ((hsPkgs.pkgs-errors).buildDepError "sql-words"))
          (hsPkgs."names-th" or ((hsPkgs.pkgs-errors).buildDepError "names-th"))
          (hsPkgs."persistable-record" or ((hsPkgs.pkgs-errors).buildDepError "persistable-record"))
          ];
        buildable = true;
        };
      tests = {
        "sqls" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quickcheck-simple" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-simple"))
            (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        "sqlsArrow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."quickcheck-simple" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-simple"))
            (hsPkgs."relational-query" or ((hsPkgs.pkgs-errors).buildDepError "relational-query"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }