{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      build-examples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-cacophony";
          version = "0.5.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "John Galt <jgalt@centromere.net>";
        author = "";
        homepage = "https://github.com/centromere/pipes-cacophony#readme";
        url = "";
        synopsis = "Pipes for Noise-secured network connections.";
        description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
        buildType = "Simple";
      };
      components = {
        pipes-cacophony = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cacophony
            hsPkgs.pipes
          ];
        };
        exes = {
          loopback = {
            depends  = pkgs.lib.optionals _flags.build-examples [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cacophony
              hsPkgs.pipes
              hsPkgs.pipes-cacophony
            ];
          };
        };
        tests = {
          hlint = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
        };
      };
    }