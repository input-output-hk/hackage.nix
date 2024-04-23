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
      specVersion = "1.2";
      identifier = { name = "llvm"; version = "0.7.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://darcs.serpentine.com/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit.";
      description = "Bindings to the LLVM compiler toolkit.\n* New in 0.7.1.0: More attributes\n\n* New in 0.7.0.1: MacOS fixes.\n\n* New in 0.7.0.0: Adapted to LLVM 2.6;\n\n* New in 0.6.8.0: Add functions to allow freeing function resources;\n\n* New in 0.6.7.0: Struct types;\n\n* New in 0.6.6.0: Bug fixes;\n\n* New in 0.6.5.0: Adapted to LLVM 2.5;";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
        ];
        buildable = true;
      };
    };
  }