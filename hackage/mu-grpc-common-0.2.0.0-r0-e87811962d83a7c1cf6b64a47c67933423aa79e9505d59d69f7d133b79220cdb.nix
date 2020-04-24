{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mu-grpc-common"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "gRPC for Mu, common modules for client and server";
      description = "Use @mu-grpc-server@ or @mu-grpc-client@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."avro" or ((hsPkgs.pkgs-errors).buildDepError "avro"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http2-grpc-proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-proto3-wire"))
          (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
          (hsPkgs."mu-avro" or ((hsPkgs.pkgs-errors).buildDepError "mu-avro"))
          (hsPkgs."mu-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "mu-protobuf"))
          (hsPkgs."mu-rpc" or ((hsPkgs.pkgs-errors).buildDepError "mu-rpc"))
          (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
          ];
        buildable = true;
        };
      };
    }