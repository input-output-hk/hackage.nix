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
      specVersion = "3.0";
      identifier = { name = "keel-onnx"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zhe Zhang";
      author = "Zhe Zhang";
      homepage = "https://github.com/skymanbp/keel";
      url = "";
      synopsis = "ONNX Runtime inference over a runtime-loaded library";
      description = "Inference-only bindings to ONNX Runtime's C API, resolved entirely\nat run time: keel-dyn loads the (MIT-licensed, official) shared\nlibrary, @OrtGetApiBase()@ hands back the versioned function-pointer\ntable, and every call goes through it. No build-time native\ndependency, no cbits in the shipped library.\n.\nThe OrtApi function-pointer slot indices are pinned against the\nvendored @onnxruntime_c_api.h@ (v1.24.4) by a /test-suite-only/ C\ngate — the ABI contract is that slots are append-only, so any\nruntime >= the pinned API version serves them at the same indices.\n.\nThe vendored headers are Microsoft's, MIT-licensed; their license\ntext ships alongside as @LICENSE.onnxruntime@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "keel-onnx-slots" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel-onnx" or (errorHandler.buildDepError "keel-onnx"))
          ];
          buildable = true;
        };
        "keel-onnx-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."keel-onnx" or (errorHandler.buildDepError "keel-onnx"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }