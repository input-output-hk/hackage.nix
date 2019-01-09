{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { tls_1_1_3 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "warp-tls"; version = "1.4.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://github.com/yesodweb/wai";
      url = "";
      synopsis = "HTTP over SSL/TLS support for Warp via the TLS package";
      description = "HTTP over SSL/TLS support for Warp via the TLS package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.transformers)
          (hsPkgs.conduit)
          (hsPkgs.network-conduit)
          (hsPkgs.certificate)
          (hsPkgs.pem)
          (hsPkgs.cryptocipher)
          (hsPkgs.tls-extra)
          (hsPkgs.tls)
          (hsPkgs.crypto-random-api)
          (hsPkgs.network)
          (hsPkgs.cprng-aes)
          ] ++ [ (hsPkgs.tls) (hsPkgs.cprng-aes) ];
        };
      };
    }