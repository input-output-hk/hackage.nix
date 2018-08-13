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
        name = "graphql";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 J. Daniel Navarro";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/graphql-haskell";
      url = "";
      synopsis = "GraphQL Haskell implementation";
      description = "For now this package provides the data types for the GraphQL language.\nFurther releases will cover more aspects of the GraphQL specification.";
      buildType = "Simple";
    };
    components = {
      "graphql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
      };
    };
  }