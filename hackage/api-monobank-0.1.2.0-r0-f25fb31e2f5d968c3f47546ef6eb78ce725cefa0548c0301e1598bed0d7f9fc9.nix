{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "api-monobank"; version = "0.1.2.0"; };
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
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.http-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          ];
        };
      exes = {
        "mnb-app" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.http-conduit)
            (hsPkgs.http-client)
            (hsPkgs.aeson)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.api-monobank)
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