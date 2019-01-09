{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "oauth2-jwt-bearer"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, HotelKilo";
      maintainer = "mth@smith.st";
      author = "Mark Hibberd";
      homepage = "https://github.com/smith-security/oauth2-jwt-bearer";
      url = "";
      synopsis = "OAuth2 jwt-bearer client flow as per rfc7523";
      description = "This is an implementation of the jwt-bearer authorization grant flow\nthat is specified by the OAuth2 JWT profile in\n<https://tools.ietf.org/html/rfc7523 rfc7523>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-bifunctors)
          (hsPkgs.unordered-containers)
          (hsPkgs.jose)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.hedgehog)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.jose)
            (hsPkgs.mmorph)
            (hsPkgs.network)
            (hsPkgs.oauth2-jwt-bearer)
            (hsPkgs.Spock-core)
            (hsPkgs.streaming-commons)
            (hsPkgs.text)
            (hsPkgs.warp)
            (hsPkgs.x509)
            (hsPkgs.x509-store)
            ];
          };
        };
      };
    }