{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      hlint = true;
      vectors = true;
      build-examples = false;
      llvm = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cacophony";
        version = "0.9.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/cacophony";
      url = "";
      synopsis = "A library implementing the Noise protocol.";
      description = "This library implements the <https://github.com/trevp/noise/blob/master/noise.md Noise>\nprotocol.";
      buildType = "Simple";
    };
    components = {
      "cacophony" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.free)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.monad-coroutine)
          (hsPkgs.mtl)
          (hsPkgs.safe-exceptions)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "echo-server" = {
          depends  = pkgs.lib.optionals (_flags.build-examples) [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.auto-update)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.unix)
            (hsPkgs.unix-time)
          ];
        };
        "echo-client" = {
          depends  = pkgs.lib.optionals (_flags.build-examples) [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.unix)
          ];
        };
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!_flags.hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "vectors" = {
          depends  = pkgs.lib.optionals (!(!_flags.vectors)) [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.free)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.memory)
          ];
        };
      };
    };
  }