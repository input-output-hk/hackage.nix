{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "http2-grpc-types"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, 2019 Lucas DiCioccio, Alejandro Serrano";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio, Alejandro Serrano";
      homepage = "https://github.com/haskell-grpc-native/http2-grpc-haskell#readme";
      url = "";
      synopsis = "Types for gRPC over HTTP2 common for client and servers.";
      description = "Please see the README on GitHub at <https://github.com/haskell-grpc-native/http2-grpc-haskell/blob/master/http2-grpc-types/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          ];
        buildable = true;
        };
      };
    }