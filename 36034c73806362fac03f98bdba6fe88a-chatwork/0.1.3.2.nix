{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "chatwork";
        version = "0.1.3.2";
      };
      license = "MIT";
      copyright = "2017-2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/chatwork#readme";
      url = "";
      synopsis = "The ChatWork API in Haskell";
      description = "See README at <https://github.com/matsubara0507/chatwork#readme>";
      buildType = "Simple";
    };
    components = {
      "chatwork" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.data-default-class)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.req)
          (hsPkgs.text)
        ];
      };
      exes = {
        "sample-exe" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chatwork)
            (hsPkgs.connection)
            (hsPkgs.data-default-class)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.req)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-casing)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.data-default-class)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.req)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }