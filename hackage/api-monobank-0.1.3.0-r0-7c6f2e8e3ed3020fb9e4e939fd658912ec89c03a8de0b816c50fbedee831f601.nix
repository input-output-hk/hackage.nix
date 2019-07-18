{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "api-monobank"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Sergey Bushnyak";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Sergey Bushnyak";
      homepage = "https://github.com/sigrlami/api-monobank#readme";
      url = "";
      synopsis = "";
      description = "Api client for popular Ukrainian bank - Monobank";
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
          (hsPkgs.http-conduit)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "mnb-app" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.api-monobank)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      tests = {
        "mnb-app-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hs-coindesk-api)
            ];
          };
        };
      };
    }