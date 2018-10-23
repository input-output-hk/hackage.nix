{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-query";
        version = "0.5.0.0";
      };
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
      "relational-query" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.dlist)
          (hsPkgs.template-haskell)
          (hsPkgs.sql-words)
          (hsPkgs.names-th)
          (hsPkgs.persistable-record)
        ];
      };
      tests = {
        "sqls" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal-test-compat)
            (hsPkgs.relational-query)
            (hsPkgs.containers)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }