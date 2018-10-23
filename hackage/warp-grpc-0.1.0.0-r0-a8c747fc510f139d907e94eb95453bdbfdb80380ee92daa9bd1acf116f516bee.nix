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
        name = "warp-grpc";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/warp-grpc#readme";
      url = "";
      synopsis = "A minimal gRPC server on top of Warp.";
      description = "Please see the README on Github at <https://github.com/githubuser/warp-grpc#readme>";
      buildType = "Simple";
    };
    components = {
      "warp-grpc" = {
        depends  = [
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
      exes = {
        "warp-grpc-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.http2-grpc-types)
            (hsPkgs.proto-lens)
            (hsPkgs.proto-lens-protoc)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.warp-grpc)
            (hsPkgs.warp-tls)
          ];
        };
      };
      tests = {
        "warp-grpc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.http-types)
            (hsPkgs.http2-grpc-types)
            (hsPkgs.proto-lens)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.warp-grpc)
            (hsPkgs.warp-tls)
          ];
        };
      };
    };
  }