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
    flags = { tests = false; };
    package = {
      specVersion = "1.8.0.6";
      identifier = { name = "newt"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "creswick@gmail.com";
      author = "Rogan Creswick";
      homepage = "";
      url = "";
      synopsis = "A trivially simple app to create things from simple templates.";
      description = "Instantiates text things from templates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filemanip" or (errorHandler.buildDepError "filemanip"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "newt" = {
          depends = [
            (hsPkgs."newt" or (errorHandler.buildDepError "newt"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ] ++ [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        "test-newt" = {
          depends = [
            (hsPkgs."newt" or (errorHandler.buildDepError "newt"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ] ++ [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }