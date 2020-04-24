{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mu-protobuf"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "Protocol Buffers serialization and gRPC schema import for Mu microservices";
      description = "You can use @mu-protobuf@ to read Protobuf Schema Declarations and services for mu-haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
          (hsPkgs."mu-rpc" or ((hsPkgs.pkgs-errors).buildDepError "mu-rpc"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."language-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "language-protobuf"))
          (hsPkgs."compendium-client" or ((hsPkgs.pkgs-errors).buildDepError "compendium-client"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."servant-client-core" or ((hsPkgs.pkgs-errors).buildDepError "servant-client-core"))
          (hsPkgs."http2-grpc-proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-proto3-wire"))
          ];
        buildable = true;
        };
      exes = {
        "test-protobuf" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
            (hsPkgs."mu-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "mu-protobuf"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
            ];
          buildable = true;
          };
        };
      };
    }