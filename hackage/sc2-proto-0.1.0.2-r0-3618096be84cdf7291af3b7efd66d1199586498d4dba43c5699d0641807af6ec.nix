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
      specVersion = "2.0";
      identifier = { name = "sc2-proto"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A protocol buffer model for the Starcraft II bot API";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.proto-lens-protoc or (pkgs.pkgsBuildBuild.proto-lens-protoc or (errorHandler.setupDepError "proto-lens-protoc")))
        (hsPkgs.pkgsBuildBuild.proto-lens-setup or (pkgs.pkgsBuildBuild.proto-lens-setup or (errorHandler.setupDepError "proto-lens-setup")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."gitrev" or (errorHandler.buildDepError "gitrev"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.proto-lens-protoc.components.exes.proto-lens-protoc or (pkgs.pkgsBuildBuild.proto-lens-protoc or (errorHandler.buildToolDepError "proto-lens-protoc:proto-lens-protoc")))
          (hsPkgs.pkgsBuildBuild.protoc.components.exes.protoc or (pkgs.pkgsBuildBuild.protoc or (errorHandler.buildToolDepError "protoc:protoc")))
        ];
        buildable = true;
      };
    };
  }