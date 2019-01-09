{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-tools = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cacophony"; version = "0.10.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "John Galt <jgalt@centromere.net>";
      author = "";
      homepage = "https://github.com/centromere/cacophony#readme";
      url = "";
      synopsis = "A library implementing the Noise protocol.";
      description = "This library implements the <https://noiseprotocol.org Noise> protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
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
        "noise-repl" = {
          depends = [
            (hsPkgs.base)
            ] ++ (pkgs.lib).optionals (flags.build-tools) [
            (hsPkgs.attoparsec)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.haskeline)
            (hsPkgs.network)
            (hsPkgs.process)
            ];
          };
        };
      tests = {
        "hlint" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
        "vectors" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }