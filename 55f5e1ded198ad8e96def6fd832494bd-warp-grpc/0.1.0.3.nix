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
        name = "warp-grpc";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/warp-grpc#readme";
      url = "";
      synopsis = "A minimal gRPC server on top of Warp.";
      description = "Please see the README on Github at <https://github.com/lucasdicioccio/warp-grpc#readme>";
      buildType = "Simple";
    };
    components = {
      "warp-grpc" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-types)
          (hsPkgs.http2-grpc-types)
          (hsPkgs.proto-lens)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
        ];
      };
    };
  }