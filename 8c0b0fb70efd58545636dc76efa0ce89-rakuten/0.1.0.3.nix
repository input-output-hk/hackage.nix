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
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "2017 MATSUBARA Nobutada";
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
          (hsPkgs.base)
          (hsPkgs.aeson)
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
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
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
            (hsPkgs.unordered-containers)
            (hsPkgs.servant-server)
            (hsPkgs.warp)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }