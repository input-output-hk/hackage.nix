{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      use-ioref = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "traildb";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "AdRoll Inc (c) 2016";
        maintainer = "mikko.juola@adroll.com";
        author = "Mikko Juola";
        homepage = "";
        url = "";
        synopsis = "TrailDB bindings for Haskell";
        description = "Check out README.md for information on these bindings.\n\nTrailDB project home page is at traildb.io";
        buildType = "Simple";
      };
      components = {
        traildb = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.lens
            hsPkgs.exceptions
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.vector
          ];
          libs = [
            pkgs.traildb
            pkgs.Judy
          ];
        };
        benchmarks = {
          bench-traildb = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.criterion
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.traildb
            ];
          };
        };
      };
    }