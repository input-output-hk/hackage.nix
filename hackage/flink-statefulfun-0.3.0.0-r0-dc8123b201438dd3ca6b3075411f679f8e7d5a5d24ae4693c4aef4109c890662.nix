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
      specVersion = "2.4";
      identifier = { name = "flink-statefulfun"; version = "0.3.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "tdbgamer@gmail.com";
      author = "Timothy Bess";
      homepage = "";
      url = "";
      synopsis = "Flink stateful functions SDK";
      description = "Typeclasses for serving Flink stateful functions\nfrom Haskell.\nCheckout the [README for examples](https://github.com/tdbgamer/flink-statefulfun-hs).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.proto-lens-setup or (pkgs.pkgsBuildBuild.proto-lens-setup or (errorHandler.setupDepError "proto-lens-setup")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."proto-lens-protobuf-types" or (errorHandler.buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.proto-lens-protoc.components.exes.proto-lens-protoc or (pkgs.pkgsBuildBuild.proto-lens-protoc or (errorHandler.buildToolDepError "proto-lens-protoc:proto-lens-protoc")))
        ];
        buildable = true;
      };
    };
  }