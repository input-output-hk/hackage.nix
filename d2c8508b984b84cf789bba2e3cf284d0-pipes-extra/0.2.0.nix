{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-extra";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "p.capriotti@gmail.com";
        author = "Paolo Capriotti";
        homepage = "https://github.com/pcapriotti/pipes-extra";
        url = "";
        synopsis = "Various basic utilities for Pipes.";
        description = "This module contains basic utilities for Pipes to deal with files and chunked binary data, as well as extra combinators like 'zip' and 'tee'.";
        buildType = "Simple";
      };
      components = {
        pipes-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.pipes-core
            hsPkgs.bytestring
          ];
        };
        exes = {
          telnet = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.pipes-extra
              hsPkgs.transformers
              hsPkgs.network
            ];
          };
          compress = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.pipes-extra
              hsPkgs.pipes-zlib
            ];
          };
          decompress = {
            depends  = optionals _flags.examples [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.pipes-extra
              hsPkgs.pipes-zlib
            ];
          };
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-th-prime
              hsPkgs.mtl
              hsPkgs.pipes-core
              hsPkgs.pipes-extra
            ];
          };
        };
        benchmarks = {
          bench-general = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.conduit
              hsPkgs.criterion
            ];
          };
          bench-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.transformers
              hsPkgs.criterion
            ];
          };
          bench-zlib = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-core
              hsPkgs.pipes-zlib
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.enumerator
              hsPkgs.zlib-enum
              hsPkgs.conduit
              hsPkgs.zlib-conduit
              hsPkgs.zlib
              hsPkgs.criterion
            ];
          };
        };
      };
    }