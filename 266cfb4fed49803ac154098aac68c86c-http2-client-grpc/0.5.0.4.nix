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
        name = "http2-client-grpc";
        version = "0.5.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-client-grpc#readme";
      url = "";
      synopsis = "Implement gRPC-over-HTTP2 clients.";
      description = "A gRPC over http2-client using proto-lens to generate client code.";
      buildType = "Simple";
    };
    components = {
      "http2-client-grpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          (hsPkgs.http2)
          (hsPkgs.http2-client)
          (hsPkgs.http2-grpc-types)
          (hsPkgs.proto-lens)
          (hsPkgs.text)
          (hsPkgs.tls)
        ];
      };
      tests = {
        "http2-client-grpc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http2-client-grpc)
          ];
        };
      };
    };
  }