{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "unagi-streams";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "luke@hoersten.org";
        author = "Luke Hoersten";
        homepage = "";
        url = "";
        synopsis = "Unagi Chan IO-Streams";
        description = "IO-Streams implemented underneath with Unagi\nchannels. This library is a straight port of Greg Collins' IO-Streams\nChan implementation.";
        buildType = "Simple";
      };
      components = {
        unagi-streams = {
          depends  = [
            hsPkgs.base
            hsPkgs.unagi-chan
            hsPkgs.io-streams
          ];
        };
      };
    }