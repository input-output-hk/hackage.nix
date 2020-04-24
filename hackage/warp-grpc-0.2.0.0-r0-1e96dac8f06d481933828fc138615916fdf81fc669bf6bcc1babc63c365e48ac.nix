{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "warp-grpc"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2019 Lucas DiCioccio, Alejandro Serrano";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio, Alejandro Serrano";
      homepage = "https://github.com/haskell-grpc-native/http2-grpc-haskell#readme";
      url = "";
      synopsis = "A minimal gRPC server on top of Warp.";
      description = "Please see the README on Github at <https://github.com/haskell-grpc-native/http2-grpc-haskell/blob/master/warp-grpc/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."http2" or ((hsPkgs.pkgs-errors).buildDepError "http2"))
          (hsPkgs."http2-grpc-types" or ((hsPkgs.pkgs-errors).buildDepError "http2-grpc-types"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          (hsPkgs."warp-tls" or ((hsPkgs.pkgs-errors).buildDepError "warp-tls"))
          ];
        buildable = true;
        };
      };
    }