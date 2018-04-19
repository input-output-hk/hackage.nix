{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "paranoia";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Dmitry \"troydm\" Geurkov";
        maintainer = "d.geurkov@gmail.com";
        author = "Dmitry \"troydm\" Geurkov";
        homepage = "https://github.com/troydm/paranoia#readme";
        url = "";
        synopsis = "http proxy server";
        description = "HTTP Proxy Server for stalking clients";
        buildType = "Simple";
      };
      components = {
        paranoia = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.network
            hsPkgs.split
            hsPkgs.streaming-commons
            hsPkgs.http-types
            hsPkgs.http-client
            hsPkgs.http-client-openssl
            hsPkgs.HsOpenSSL
            hsPkgs.unix
            hsPkgs.wai
            hsPkgs.warp
          ];
        };
        exes = {
          paranoia = {
            depends  = [
              hsPkgs.base
              hsPkgs.paranoia
              hsPkgs.hdaemonize
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          paranoia-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.paranoia
            ];
          };
        };
      };
    }