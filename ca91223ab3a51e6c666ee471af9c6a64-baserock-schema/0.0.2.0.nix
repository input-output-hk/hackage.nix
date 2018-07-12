{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "baserock-schema";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Daniel Firth";
        maintainer = "locallycompact@gmail.com";
        author = "Daniel Firth";
        homepage = "";
        url = "";
        synopsis = "Baserock Definitions Schema";
        description = "Baserock Definitions Schema - Parsers, Printers, Encoders, Decoders, ASTs, Graphs and Traversals";
        buildType = "Simple";
      };
      components = {
        "baserock-schema" = {
          depends  = [
            hsPkgs.algebraic-graphs
            hsPkgs.base
            hsPkgs.errors
            hsPkgs.flippers
            hsPkgs.microlens-platform
            hsPkgs.mtl
            hsPkgs.rio
            hsPkgs.yaml
            hsPkgs.yaml-pretty-extras
          ];
        };
        exes = {
          "baserock" = {
            depends  = [
              hsPkgs.algebraic-graphs
              hsPkgs.base
              hsPkgs.baserock-schema
              hsPkgs.docopt
              hsPkgs.errors
              hsPkgs.flippers
              hsPkgs.gitlab-api
              hsPkgs.microlens-platform
              hsPkgs.mtl
              hsPkgs.rio
              hsPkgs.yaml
              hsPkgs.yaml-pretty-extras
            ];
          };
        };
        tests = {
          "earthquake-test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.algebraic-graphs
              hsPkgs.base
              hsPkgs.baserock-schema
              hsPkgs.bytestring
              hsPkgs.errors
              hsPkgs.flippers
              hsPkgs.hspec
              hsPkgs.microlens-platform
              hsPkgs.mtl
              hsPkgs.rio
              hsPkgs.yaml
              hsPkgs.yaml-pretty-extras
            ];
          };
        };
      };
    }