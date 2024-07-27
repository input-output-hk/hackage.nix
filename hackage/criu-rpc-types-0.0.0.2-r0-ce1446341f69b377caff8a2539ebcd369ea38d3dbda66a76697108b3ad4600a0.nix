{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "criu-rpc-types"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "wayofthepie@gmail.com";
      author = "wayofthepie";
      homepage = "https://github.com/wayofthepie/haskell-criu-rpc-types";
      url = "";
      synopsis = "Criu RPC protocol buffer types.";
      description = "Types and lenses for the CRIU RPC API generated using proto-lens.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.proto-lens-protoc or (pkgs.pkgsBuildBuild.proto-lens-protoc or (errorHandler.setupDepError "proto-lens-protoc")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
        ];
        pkgconfig = [
          (pkgconfPkgs."protobuf" or (errorHandler.pkgConfDepError "protobuf"))
        ];
        buildable = true;
      };
    };
  }