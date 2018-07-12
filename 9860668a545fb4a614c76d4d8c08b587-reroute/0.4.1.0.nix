{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reroute";
          version = "0.4.1.0";
        };
        license = "MIT";
        copyright = "(c) 2014 - 2017 Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>, Tim Baumann <tim@timbaumann.info>";
        homepage = "http://github.com/agrafix/Spock";
        url = "";
        synopsis = "abstract implementation of typed and untyped web routing";
        description = "abstraction over how urls with/without parameters are mapped to their corresponding handlers";
        buildType = "Simple";
      };
      components = {
        "reroute" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.http-api-data
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hvect
          ];
        };
        tests = {
          "reroute-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.reroute
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.hvect
            ];
          };
        };
        benchmarks = {
          "reroute-benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.text
              hsPkgs.mtl
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.hashable
              hsPkgs.regex-compat
              hsPkgs.random
              hsPkgs.deepseq
              hsPkgs.http-api-data
              hsPkgs.graph-core
              hsPkgs.hvect
              hsPkgs.reroute
            ];
          };
        };
      };
    }