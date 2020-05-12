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
    flags = { tutorial = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "kaleidoscope"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2012 Stephen Diehl";
      maintainer = "stephen.m.diehl@gmail.com";
      author = "Stephen Diehl";
      homepage = "https://github.com/sdiehl/kaleidoscope";
      url = "";
      synopsis = "Haskell Kaleidoscope tutorial";
      description = "Port of the Kaleidoscope tutorial for Haskell and LLVM";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
          (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "chapter2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "chapter4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter5" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter6" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        "chapter7" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }