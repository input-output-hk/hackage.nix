{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lucid";
          version = "2.7.0";
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
        "lucid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "test" = {
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
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.criterion
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.lucid
            ];
          };
        };
      };
    }