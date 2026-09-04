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
      identifier = { name = "keel"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Zhe Zhang";
      author = "Zhe Zhang";
      homepage = "https://github.com/skymanbp/keel";
      url = "";
      synopsis = "Umbrella for the keel capability floor: doctor, setup";
      description = "The thin seam over the keel capability packages (keel-dyn, keel-abi,\nkeel-onnx, keel-linalg):\n.\n* @keel doctor@ — reports exactly which native capabilities resolve\n  on this machine, which do not, and the one command that fixes\n  each;\n* @keel setup@ — checksum-pinned installation of native runtimes\n  into the per-user keel directory.\n.\nkeel is deliberately NOT a dataframe, a schema layer, an estimator\nprotocol, or a numeric prelude — see the project README.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."keel-abi" or (errorHandler.buildDepError "keel-abi"))
          (hsPkgs."keel-dyn" or (errorHandler.buildDepError "keel-dyn"))
          (hsPkgs."keel-linalg" or (errorHandler.buildDepError "keel-linalg"))
          (hsPkgs."keel-onnx" or (errorHandler.buildDepError "keel-onnx"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "keel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel" or (errorHandler.buildDepError "keel"))
          ];
          buildable = true;
        };
      };
      tests = {
        "keel-doctor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keel" or (errorHandler.buildDepError "keel"))
          ];
          buildable = true;
        };
        "keel-bridge-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dataframe-core" or (errorHandler.buildDepError "dataframe-core"))
            (hsPkgs."keel" or (errorHandler.buildDepError "keel"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }