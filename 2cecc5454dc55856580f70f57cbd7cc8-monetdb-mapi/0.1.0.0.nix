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
        name = "monetdb-mapi";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "";
      url = "";
      synopsis = "Mid-level bindings for the MonetDB API (mapi)";
      description = "";
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