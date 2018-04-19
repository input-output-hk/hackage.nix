{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      text11 = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "text-stream-decode";
          version = "0.1.0.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/fpco/text-stream-decode";
        url = "";
        synopsis = "Streaming decoding functions for UTF encodings.";
        description = "The @text@ package provides high performance functions for decoding strict and lazy @ByteString@s into @Text@. However, these functions present two issues for streaming data libraries: they throw exceptions from pure code, and are not designed for incremental consumption. This library addresses both issues with a unified API for UTF-8, -16LE, -16BE, -32LE, and -32BE. It is intended for use by high level streaming data libraries, such as conduit, enumerator, iteratee, and pipes.";
        buildType = "Simple";
      };
      components = {
        text-stream-decode = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ [ hsPkgs.text ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.hspec
              hsPkgs.text-stream-decode
              hsPkgs.deepseq
            ];
          };
        };
        benchmarks = {
          count-chars = {
            depends  = [
              hsPkgs.base
              hsPkgs.text-stream-decode
              hsPkgs.criterion
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
        };
      };
    }