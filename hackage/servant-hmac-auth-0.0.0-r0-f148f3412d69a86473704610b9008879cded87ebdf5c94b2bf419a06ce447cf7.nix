{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "servant-hmac-auth";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "2018 Holmusk";
      maintainer = "tech@holmusk.com";
      author = "Holmusk";
      homepage = "https://github.com/holmusk/servant-hmac-auth";
      url = "";
      synopsis = "Servant authentication with HMAC";
      description = "Servant authentication with HMAC";
      buildType = "Simple";
    };
    components = {
      "servant-hmac-auth" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.http-types)
          (hsPkgs.http-client)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-server)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.http-client)
            (hsPkgs.servant)
            (hsPkgs.servant-hmac-auth)
            (hsPkgs.servant-client)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
      };
      tests = {
        "servant-hmac-auth-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-hmac-auth)
          ];
        };
      };
    };
  }