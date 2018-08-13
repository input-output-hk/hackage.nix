{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-record";
        version = "0.2.0.0";
      };
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
      "relational-record" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.product-isomorphic)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query)
          (hsPkgs.relational-query-HDBC)
          (hsPkgs.persistable-types-HDBC-pg)
        ];
      };
    };
  }