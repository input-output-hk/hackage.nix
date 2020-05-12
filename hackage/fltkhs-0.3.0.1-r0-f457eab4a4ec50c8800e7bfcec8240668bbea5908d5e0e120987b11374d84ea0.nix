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
    flags = { fastcompile = true; };
    package = {
      specVersion = "1.20";
      identifier = { name = "fltkhs"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "http://github.com/deech/fltkhs";
      url = "";
      synopsis = "FLTK bindings";
      description = "Low level bindings for the FLTK GUI toolkit.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "fltkhs-fluidtohs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "fltkhs-pack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-tile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-nativefilechooser-simple-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-table-as-container" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-texteditor-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-textdisplay-with-colors" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-doublebuffer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-make-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-tree-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-table-spreadsheet-with-keyboard-nav" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-test_call" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-buttons" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-table-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-table-sort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        "fltkhs-arc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            ];
          buildable = true;
          };
        "fltkhs-bitmap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "fltkhs-boxtype" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "fltkhs-browser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "fltkhs-clock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }