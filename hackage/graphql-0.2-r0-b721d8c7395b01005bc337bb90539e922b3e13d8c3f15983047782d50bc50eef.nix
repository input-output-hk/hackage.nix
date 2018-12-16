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
        name = "graphql";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 J. Daniel Navarro";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "https://github.com/jdnavarro/graphql-haskell";
      url = "";
      synopsis = "Haskell GraphQL implementation";
      description = "This package provides a rudimentary parser for the\n<https://facebook.github.io/graphql/ GraphQL> language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
        ];
      };
      tests = {
        "golden" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.graphql)
          ];
        };
      };
    };
  }