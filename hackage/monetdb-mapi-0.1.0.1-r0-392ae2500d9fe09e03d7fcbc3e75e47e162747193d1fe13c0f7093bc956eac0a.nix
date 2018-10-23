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
        name = "monetdb-mapi";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "";
      url = "";
      synopsis = "Mid-level bindings for the MonetDB API (mapi)";
      description = "This library provides a convenient API to work with MonetDB.";
      buildType = "Simple";
    };
    components = {
      "monetdb-mapi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-monetdb-mapi)
        ];
      };
    };
  }