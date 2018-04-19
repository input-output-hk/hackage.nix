{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ltext";
          version = "0.0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Athan Clark <athan.clark@gmail.com>";
        author = "Athan Clark <athan.clark@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Higher-order file applicator";
        description = "λtext is a general-purpose templating utility for text files.\n\nTurn plaintext files into lambdas -\nfunction application then becomes concatenation.\n\nPlease see the <https://github.com/ltext/ltext github page> for more details.";
        buildType = "Simple";
      };
      components = {
        ltext = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.deepseq
          ];
        };
        exes = {
          ltext = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.mtl
              hsPkgs.mtl-compat
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.yaml
              hsPkgs.aeson
              hsPkgs.directory
              hsPkgs.data-default
              hsPkgs.text
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.deepseq
            ];
          };
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
            ];
          };
        };
      };
    }