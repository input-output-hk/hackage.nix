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
        name = "grpc-api-etcd";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/etcd-grpc#readme";
      url = "";
      synopsis = "Generated messages and instances for etcd gRPC.";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/etcd-grpc#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.proto-lens)
          (hsPkgs.proto-lens-runtime)
        ];
      };
    };
  }