{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mu-grpc-server"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "gRPC servers for Mu definitions";
      description = "With @mu-grpc-server@ you can easily build gRPC servers for mu-haskell!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http2-grpc-proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-proto3-wire"))
          (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."mu-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "mu-protobuf"))
          (hsPkgs."mu-rpc" or ((hsPkgs.pkgs-errors).buildDepError "mu-rpc"))
          (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."warp-grpc" or ((hsPkgs.pkgs-errors).buildDepError "warp-grpc"))
          (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
          ];
        buildable = true;
        };
      exes = {
        "grpc-example-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."http2-grpc-proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-proto3-wire"))
            (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."mu-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "mu-protobuf"))
            (hsPkgs."mu-rpc" or ((hsPkgs.pkgs-errors).buildDepError "mu-rpc"))
            (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            (hsPkgs."warp-grpc" or ((hsPkgs.pkgs-errors).buildDepError "warp-grpc"))
            (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
            ];
          buildable = true;
          };
        };
      };
    }