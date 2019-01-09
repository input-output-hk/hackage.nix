{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http2-grpc-types"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/http2-grpc-types#readme";
      url = "";
      synopsis = "Types for gRPC over HTTP2 common for client and servers.";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/http2-grpc-types#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.proto-lens)
          (hsPkgs.zlib)
          ];
        };
      };
    }