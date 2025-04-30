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
      specVersion = "3.4";
      identifier = { name = "sqlc-hs"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alex.hansen@gmail.com";
      author = "Alex Hansen";
      homepage = "https://github.com/alexbiehl/sqlc-hs";
      url = "";
      synopsis = "Generate type-safe Haskell code from SQL via https://github.com/sqlc-dev/sqlc.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sqlc-hs".components.sublibs.sqlc-hs-prelude or (errorHandler.buildDepError "sqlc-hs:sqlc-hs-prelude"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          (hsPkgs."sqlc-hs".components.sublibs.sqlc-hs-protos or (errorHandler.buildDepError "sqlc-hs:sqlc-hs-protos"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      sublibs = {
        "sqlc-hs-prelude" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          ];
          buildable = true;
        };
        "sqlc-hs-protos" = {
          depends = [
            (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
          ];
          buildable = true;
        };
      };
      exes = {
        "sqlc-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sqlc-hs".components.sublibs.sqlc-hs-prelude or (errorHandler.buildDepError "sqlc-hs:sqlc-hs-prelude"))
            (hsPkgs."sqlc-hs" or (errorHandler.buildDepError "sqlc-hs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sqlc-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sqlc-hs".components.sublibs.sqlc-hs-prelude or (errorHandler.buildDepError "sqlc-hs:sqlc-hs-prelude"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."sqlc-hs" or (errorHandler.buildDepError "sqlc-hs"))
            (hsPkgs."sqlc-hs".components.sublibs.sqlc-hs-protos or (errorHandler.buildDepError "sqlc-hs:sqlc-hs-protos"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."sqlc-hs" or (errorHandler.buildDepError "sqlc-hs"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
            (hsPkgs.pkgsBuildBuild.sqlc-hs.components.exes.sqlc-hs or (pkgs.pkgsBuildBuild.sqlc-hs or (errorHandler.buildToolDepError "sqlc-hs:sqlc-hs")))
          ];
          buildable = true;
        };
      };
    };
  }