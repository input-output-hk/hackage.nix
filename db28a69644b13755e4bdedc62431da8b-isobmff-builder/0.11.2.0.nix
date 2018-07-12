{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      tracing = true;
      fullbenchmarks = true;
      complextests = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "isobmff-builder";
          version = "0.11.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Sven Heyll, Lindenbaum GmbH";
        maintainer = "sven.heyll@lindenbaum.eu";
        author = "Sven Heyll";
        homepage = "https://github.com/sheyll/isobmff-builder#readme";
        url = "";
        synopsis = "A (bytestring-) builder for the ISO-14496-12 base media file format";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "isobmff-builder" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.type-list
            hsPkgs.data-default
            hsPkgs.vector
            hsPkgs.singletons
            hsPkgs.tagged
            hsPkgs.time
            hsPkgs.text
            hsPkgs.type-spec
            hsPkgs.mtl
            hsPkgs.pretty-types
            hsPkgs.template-haskell
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.isobmff-builder
              hsPkgs.binary
              hsPkgs.text
              hsPkgs.type-spec
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tagged
              hsPkgs.pretty-types
            ];
          };
        };
        benchmarks = {
          "bit-records" = {
            depends  = [
              hsPkgs.base
              hsPkgs.isobmff-builder
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.tagged
              hsPkgs.type-spec
            ];
          };
        };
      };
    }