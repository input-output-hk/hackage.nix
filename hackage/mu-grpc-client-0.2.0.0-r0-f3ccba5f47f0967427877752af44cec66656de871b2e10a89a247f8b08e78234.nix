{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mu-grpc-client"; version = "0.2.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright © 2019-2020 <http://47deg.com 47 Degrees>";
      maintainer = "alejandro.serrano@47deg.com";
      author = "Alejandro Serrano, Flavio Corpa";
      homepage = "https://higherkindness.io/mu-haskell/";
      url = "";
      synopsis = "gRPC clients from Mu definitions";
      description = "With @mu-grpc-client@ you can easily build gRPC clients for mu-haskell!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http2" or ((hsPkgs.pkgs-errors).buildDepError "http2"))
          (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or ((hsPkgs.pkgs-errors).buildDepError "http2-client-grpc"))
          (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
          (hsPkgs."mu-grpc-common" or ((hsPkgs.pkgs-errors).buildDepError "mu-grpc-common"))
          (hsPkgs."mu-optics" or ((hsPkgs.pkgs-errors).buildDepError "mu-optics"))
          (hsPkgs."mu-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "mu-protobuf"))
          (hsPkgs."mu-rpc" or ((hsPkgs.pkgs-errors).buildDepError "mu-rpc"))
          (hsPkgs."mu-schema" or ((hsPkgs.pkgs-errors).buildDepError "mu-schema"))
          (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
          (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."th-abstraction" or ((hsPkgs.pkgs-errors).buildDepError "th-abstraction"))
          ];
        buildable = true;
        };
      };
    }