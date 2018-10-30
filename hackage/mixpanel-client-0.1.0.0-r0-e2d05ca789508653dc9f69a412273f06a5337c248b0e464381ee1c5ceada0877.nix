{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mixpanel-client";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Domen Kožar";
      maintainer = "domen@enlambda.com";
      author = "Domen Kožar";
      homepage = "https://github.com/domenkozar/mixpanel-client#readme";
      url = "";
      synopsis = "Mixpanel client";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.string-conv)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "mixpanel-test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mixpanel-client)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.string-conv)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
        "readme" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.mixpanel-client)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.string-conv)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
      };
    };
  }