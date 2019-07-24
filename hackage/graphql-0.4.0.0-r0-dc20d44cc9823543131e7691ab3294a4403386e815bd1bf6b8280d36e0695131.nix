{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "graphql"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Eugen Wissner,\n(c) 2015-2017 J. Daniel Navarro";
      maintainer = "belka@caraus.de";
      author = "Danny Navarro <j@dannynavarro.net>,\nMatthías Páll Gissurarson <mpg@mpg.is>,\nSólrún Halla Einarsdóttir <she@mpg.is>";
      homepage = "https://github.com/caraus-ecms/graphql#readme";
      url = "";
      synopsis = "Haskell GraphQL implementation";
      description = "This package provides a rudimentary parser for the <https://graphql.github.io/graphql-spec/June2018/ GraphQL> language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.megaparsec)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.graphql)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.megaparsec)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }