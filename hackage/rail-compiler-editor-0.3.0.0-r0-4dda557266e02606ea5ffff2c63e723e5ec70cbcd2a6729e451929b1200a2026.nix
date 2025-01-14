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
      specVersion = "1.10";
      identifier = { name = "rail-compiler-editor"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "borgers@mi.fu-berlin.de";
      author = "see AUTHORS";
      homepage = "https://github.com/SWP-Ubau-SoSe2014-Haskell/SWPSoSe14";
      url = "";
      synopsis = "Compiler and editor for the esolang rail.";
      description = "A compiler and a graphical editor for the esoteric programming language rail.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."llvm-general-pure" or (errorHandler.buildDepError "llvm-general-pure"))
          (hsPkgs."llvm-general" or (errorHandler.buildDepError "llvm-general"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "RailCompiler" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rail-compiler-editor" or (errorHandler.buildDepError "rail-compiler-editor"))
          ];
          buildable = true;
        };
        "RailEditor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."rail-compiler-editor" or (errorHandler.buildDepError "rail-compiler-editor"))
          ];
          buildable = true;
        };
      };
      tests = {
        "testcases" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."rail-compiler-editor" or (errorHandler.buildDepError "rail-compiler-editor"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }