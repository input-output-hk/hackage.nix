{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "relational-query-HDBC";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 2014 Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      maintainer = "ex8k.hibino@gmail.com, shohei.murayama@gmail.com, amutake.s@gmail.com, krdlab@gmail.com";
      author = "Kei Hibino, Shohei Murayama, Shohei Yasutake, Sho KURODA";
      homepage = "http://twitter.com/khibino";
      url = "";
      synopsis = "HDBC instance of relational join and typed query for HDBC";
      description = "This package contains HDBC instance of relational-query and\ntyped query for HDBC.\nGenerating Database table definitions and functions for\nrelational-query by reading table and index definitions\nfrom Database system catalogs.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.template-haskell)
          (hsPkgs.names-th)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query)
          (hsPkgs.relational-schemas)
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-session)
        ];
      };
    };
  }