{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "binary-tagged";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
        homepage = "https://github.com/phadej/binary-tagged#readme";
        url = "";
        synopsis = "Tagged binary serialisation.";
        description = "Write me.";
        buildType = "Simple";
      };
      components = {
        binary-tagged = {
          depends  = [
            hsPkgs.base
            hsPkgs.generics-sop
            hsPkgs.SHA
            hsPkgs.array
            hsPkgs.aeson
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.text
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          binary-tagged-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.generics-sop
              hsPkgs.SHA
              hsPkgs.array
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.binary-tagged
              hsPkgs.binary-orphans
              hsPkgs.bifunctors
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          binary-tagged-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.generics-sop
              hsPkgs.SHA
              hsPkgs.array
              hsPkgs.aeson
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.scientific
              hsPkgs.tagged
              hsPkgs.text
              hsPkgs.time
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.binary-tagged
              hsPkgs.binary-orphans
              hsPkgs.deepseq
              hsPkgs.criterion
            ];
          };
        };
      };
    }