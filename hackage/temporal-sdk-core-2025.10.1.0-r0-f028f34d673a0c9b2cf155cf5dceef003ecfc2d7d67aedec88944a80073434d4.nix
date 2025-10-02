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
    flags = { external_lib = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "temporal-sdk-core"; version = "2025.10.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "temporal@mercury.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Temporal is a durable execution system that transparently makes your code durable, fault-tolerant, and simple. This is the core FFI bindings for the high-level Temporal SDK. Note that it requires Rust/Cargo to build.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.filepath or (pkgs.pkgsBuildBuild.filepath or (errorHandler.setupDepError "filepath")))
        (hsPkgs.pkgsBuildBuild.unix or (pkgs.pkgsBuildBuild.unix or (errorHandler.setupDepError "unix")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."temporal-api-protos" or (errorHandler.buildDepError "temporal-api-protos"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [
          (pkgs."temporal_bridge" or (errorHandler.sysDepError "temporal_bridge"))
        ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."Security" or (errorHandler.sysDepError "Security"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
          (pkgs."SystemConfiguration" or (errorHandler.sysDepError "SystemConfiguration"))
        ];
        buildable = true;
      };
    };
  }