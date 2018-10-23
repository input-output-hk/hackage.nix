{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      hlint = true;
      build-examples = false;
      llvm = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pipes-cacophony";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/pipes-cacophony";
      url = "";
      synopsis = "Pipes for Noise-secured network connections.";
      description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
      buildType = "Simple";
    };
    components = {
      "pipes-cacophony" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cacophony)
          (hsPkgs.pipes)
        ];
      };
      exes = {
        "echo-server" = {
          depends  = pkgs.lib.optionals (flags.build-examples) [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.auto-update)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.pipes)
            (hsPkgs.pipes-aeson)
            (hsPkgs.pipes-cacophony)
            (hsPkgs.pipes-network)
            (hsPkgs.pipes-parse)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unix-time)
          ];
        };
        "echo-client" = {
          depends  = pkgs.lib.optionals (flags.build-examples) [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.directory)
            (hsPkgs.pipes)
            (hsPkgs.pipes-aeson)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-cacophony)
            (hsPkgs.pipes-network)
            (hsPkgs.pipes-parse)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test-pipes-cacophony" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.mtl)
            (hsPkgs.pipes)
            (hsPkgs.pipes-cacophony)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }