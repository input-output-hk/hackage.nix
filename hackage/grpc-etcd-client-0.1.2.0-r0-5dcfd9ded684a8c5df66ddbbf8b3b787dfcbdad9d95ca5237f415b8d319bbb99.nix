{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "grpc-etcd-client"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/etcd-grpc#readme";
      url = "";
      synopsis = "gRPC client for etcd";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/etcd-grpc#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."grpc-api-etcd" or ((hsPkgs.pkgs-errors).buildDepError "grpc-api-etcd"))
          (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or ((hsPkgs.pkgs-errors).buildDepError "http2-client-grpc"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-runtime"))
          ];
        buildable = true;
        };
      };
    }