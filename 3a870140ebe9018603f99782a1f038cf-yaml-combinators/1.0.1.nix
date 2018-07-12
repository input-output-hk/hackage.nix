{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yaml-combinators";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2015 Signal Vine, LLC\n(c) 2017 Roman Cheplyaka";
        maintainer = "roma@ro-che.info";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/yaml-combinators";
        url = "";
        synopsis = "YAML parsing combinators for improved validation and error reporting";
        description = "Based on the article\n<https://ro-che.info/articles/2015-07-26-better-yaml-parsing Better Yaml Parsing>.";
        buildType = "Simple";
      };
      components = {
        "yaml-combinators" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.generics-sop
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.yaml
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.unordered-containers
              hsPkgs.yaml-combinators
            ];
          };
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }