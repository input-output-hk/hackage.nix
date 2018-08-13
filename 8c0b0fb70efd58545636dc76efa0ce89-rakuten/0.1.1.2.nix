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
        name = "rakuten";
        version = "0.1.1.2";
      };
      license = "MIT";
      copyright = "2017-2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/rakuten#readme";
      url = "";
      synopsis = "The Rakuten API in Haskell";
      description = "See README at <https://github.com/matsubara0507/rakuten#readme>";
      buildType = "Simple";
    };
    components = {
      "rakuten" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.constraints)
          (hsPkgs.data-default-class)
          (hsPkgs.extensible)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.req)
          (hsPkgs.text)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.constraints)
            (hsPkgs.data-default-class)
            (hsPkgs.extensible)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.req)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }