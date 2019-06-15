{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hprox"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2019 Bin Jin";
      maintainer = "bjin@ctrl-d.org";
      author = "Bin Jin";
      homepage = "https://github.com/bjin/hprox#readme";
      url = "";
      synopsis = "a lightweight HTTP proxy server, and more";
      description = "Please see the README on GitHub at <https://github.com/bjin/hprox#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hprox" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.http-client)
            (hsPkgs.http-reverse-proxy)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.tls)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
            ];
          };
        };
      };
    }