{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "http2-grpc-proto3-wire"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Alejandro Serrano";
      maintainer = "lucas@dicioccio.fr";
      author = "Alejandro Serrano";
      homepage = "https://github.com/haskell-grpc-native/http2-grpc-haskell#readme";
      url = "";
      synopsis = "Encoders based on `proto3-wire` for gRPC over HTTP2.";
      description = "Please see the README on GitHub at <https://github.com/haskell-grpc-native/http2-grpc-haskell/blob/master/http2-grpc-proto3-wire/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
          (hsPkgs."proto3-wire" or ((hsPkgs.pkgs-errors).buildDepError "proto3-wire"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ];
        buildable = true;
        };
      };
    }