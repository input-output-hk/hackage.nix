{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test-proxy = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "http-client-openssl";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com alexbiehl@gmail.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "http-client backend using the OpenSSL library.";
      description = "Hackage documentation generation is not reliable. For up to date documentation, please see: <http://www.stackage.org/package/http-client>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.network)
          (hsPkgs.HsOpenSSL)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-openssl)
            (hsPkgs.http-types)
            (hsPkgs.HsOpenSSL)
          ];
        };
      };
    };
  }