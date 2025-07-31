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
    flags = { pkg-config = true; use-bundled-header = true; };
    package = {
      specVersion = "3.4";
      identifier = { name = "hs-onnxruntime-capi"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2025 Wen Kokke and Well-Typed LLP";
      maintainer = "wenkokke@users.noreply.github.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings for ONNX Runtime";
      description = "Low-level bindings for ONNX Runtime.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat-constptr" or (errorHandler.buildDepError "base-compat-constptr"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = pkgs.lib.optional (!flags.pkg-config) (pkgs."onnxruntime" or (errorHandler.sysDepError "onnxruntime"));
        pkgconfig = pkgs.lib.optional (flags.pkg-config) (pkgconfPkgs."libonnxruntime" or (errorHandler.pkgConfDepError "libonnxruntime"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }