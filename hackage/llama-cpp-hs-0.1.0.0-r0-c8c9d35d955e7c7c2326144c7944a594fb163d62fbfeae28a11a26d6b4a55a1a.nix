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
      specVersion = "1.12";
      identifier = { name = "llama-cpp-hs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2025 tushar";
      maintainer = "tusharadhatrao@gmail.com";
      author = "tushar";
      homepage = "https://github.com/tusharad/llama-cpp-hs#readme";
      url = "";
      synopsis = "Haskell FFI bindings to the llama.cpp LLM inference library";
      description = "Haskell bindings for [llama.cpp](https://github.com/ggerganov/llama.cpp), a performant, C++-based inference engine for running large language models (LLMs) like LLaMA, Mistral, Qwen, and others directly on local hardware.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
        ];
        libs = [ (pkgs."llama" or (errorHandler.sysDepError "llama")) ];
        buildable = true;
      };
      tests = {
        "llama-cpp-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."llama-cpp-hs" or (errorHandler.buildDepError "llama-cpp-hs"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }