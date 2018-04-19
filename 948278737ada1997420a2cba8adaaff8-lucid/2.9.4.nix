{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lucid";
          version = "2.9.4";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/lucid";
        url = "";
        synopsis = "Clear to write, read and edit DSL for HTML";
        description = "Clear to write, read and edit DSL for HTML. See the 'Lucid' module\nfor description and documentation.";
        buildType = "Simple";
      };
      components = {
        lucid = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.lucid
              hsPkgs.HUnit
              hsPkgs.hspec
              hsPkgs.parsec
              hsPkgs.bifunctors
              hsPkgs.text
              hsPkgs.mtl
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.blaze-builder
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.lucid
            ];
          };
        };
      };
    }