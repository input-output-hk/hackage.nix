{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      use-cbits = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "token-bucket";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "https://github.com/hvr/token-bucket";
        url = "";
        synopsis = "Rate limiter using lazy bucket algorithm";
        description = "This package provides a variant of a [Token Bucket](https://en.wikipedia.org/wiki/Token_bucket)\nor [Leaky Bucket](https://en.wikipedia.org/wiki/Leaky_bucket) rate-limiting algorithm optimised for low overhead.\n\nThe rate-limiting variant implemented by this package is heavily inspired by the algorithm described in\n<https://web.archive.org/web/20120808023806/http://ksdlck.com/post/17418037348/rate-limiting-at-webscale-lazy-leaky-buckets \"Rate Limiting at Webscale: Lazy Leaky Buckets\">.";
        buildType = "Simple";
      };
      components = {
        token-bucket = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (!_flags.use-cbits) hsPkgs.time;
        };
        tests = {
          test-tb = {
            depends  = [
              hsPkgs.base
              hsPkgs.time
              hsPkgs.token-bucket
            ];
          };
        };
      };
    }