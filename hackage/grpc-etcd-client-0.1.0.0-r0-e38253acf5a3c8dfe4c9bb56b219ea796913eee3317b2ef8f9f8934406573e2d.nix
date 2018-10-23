{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "grpc-etcd-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/grpc-etcd-client#readme";
      url = "";
      synopsis = "gRPC client for etcd";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/grpc-etcd-client#readme>";
      buildType = "Simple";
    };
    components = {
      "grpc-etcd-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.grpc-api-etcd)
          (hsPkgs.http2-client)
          (hsPkgs.http2-client-grpc)
          (hsPkgs.lens)
          (hsPkgs.network)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-protoc)
        ];
      };
    };
  }