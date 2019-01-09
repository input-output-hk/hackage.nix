{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-sample = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "wss-client"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Yuji Yamamoto";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "Yuji Yamamoto";
      homepage = "https://github.com/iij-ii/wss-client";
      url = "";
      synopsis = "A-little-higher-level WebSockets client.";
      description = "A-little-higher-level WebSockets client. Based on http-client and http-client-tls.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.network-uri)
          (hsPkgs.websockets)
          ];
        };
      exes = {
        "wss-client-sample" = {
          depends = [ (hsPkgs.base) (hsPkgs.wss-client) (hsPkgs.bytestring) ];
          };
        };
      tests = {
        "wss-client-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wss-client)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }