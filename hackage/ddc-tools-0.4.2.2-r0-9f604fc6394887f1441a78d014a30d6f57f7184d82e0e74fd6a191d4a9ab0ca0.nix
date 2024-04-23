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
      specVersion = "1.6";
      identifier = { name = "ddc-tools"; version = "0.4.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler command line tools.";
      description = "Disciplined Disciple Compiler command line tools.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ddc-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
          ];
          buildable = true;
        };
        "ddc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
            (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or (errorHandler.buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or (errorHandler.buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-core-tetra" or (errorHandler.buildDepError "ddc-core-tetra"))
            (hsPkgs."ddc-code" or (errorHandler.buildDepError "ddc-code"))
            (hsPkgs."ddc-build" or (errorHandler.buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or (errorHandler.buildDepError "ddc-driver"))
          ];
          buildable = true;
        };
        "ddci-core" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
            (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or (errorHandler.buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or (errorHandler.buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-core-flow" or (errorHandler.buildDepError "ddc-core-flow"))
            (hsPkgs."ddc-core-tetra" or (errorHandler.buildDepError "ddc-core-tetra"))
            (hsPkgs."ddc-code" or (errorHandler.buildDepError "ddc-code"))
            (hsPkgs."ddc-build" or (errorHandler.buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or (errorHandler.buildDepError "ddc-driver"))
          ];
          buildable = true;
        };
        "ddci-tetra" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ddc-base" or (errorHandler.buildDepError "ddc-base"))
            (hsPkgs."ddc-core" or (errorHandler.buildDepError "ddc-core"))
            (hsPkgs."ddc-core-simpl" or (errorHandler.buildDepError "ddc-core-simpl"))
            (hsPkgs."ddc-core-salt" or (errorHandler.buildDepError "ddc-core-salt"))
            (hsPkgs."ddc-core-llvm" or (errorHandler.buildDepError "ddc-core-llvm"))
            (hsPkgs."ddc-core-flow" or (errorHandler.buildDepError "ddc-core-flow"))
            (hsPkgs."ddc-core-tetra" or (errorHandler.buildDepError "ddc-core-tetra"))
            (hsPkgs."ddc-source-tetra" or (errorHandler.buildDepError "ddc-source-tetra"))
            (hsPkgs."ddc-code" or (errorHandler.buildDepError "ddc-code"))
            (hsPkgs."ddc-build" or (errorHandler.buildDepError "ddc-build"))
            (hsPkgs."ddc-driver" or (errorHandler.buildDepError "ddc-driver"))
          ];
          buildable = true;
        };
      };
    };
  }