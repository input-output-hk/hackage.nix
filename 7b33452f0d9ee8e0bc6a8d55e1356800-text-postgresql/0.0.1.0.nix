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
        name = "text-postgresql";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "http://khibino.github.io/haskell-relational-record/";
      url = "";
      synopsis = "Parser and Printer of PostgreSQL extended types";
      description = "This package involves parser and printer for\ntext expressions of PostgreSQL extended types.\n- inet type, cidr type";
      buildType = "Simple";
    };
    components = {
      "text-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.dlist)
        ];
      };
      tests = {
        "pp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-simple)
            (hsPkgs.text-postgresql)
          ];
        };
      };
    };
  }