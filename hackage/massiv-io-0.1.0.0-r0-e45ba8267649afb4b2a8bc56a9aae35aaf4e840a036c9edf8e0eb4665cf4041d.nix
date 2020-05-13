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
      identifier = { name = "massiv-io"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alexey Kuleshevich";
      maintainer = "alexey@kuleshevi.ch";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/massiv";
      url = "";
      synopsis = "Import/export of Image files into massiv Arrays";
      description = "This package contains functionality for import/export of arrays\ninto the real world. For now it only has the ability to read/write\nimage files in varios formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."massiv" or (errorHandler.buildDepError "massiv"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."netpbm" or (errorHandler.buildDepError "netpbm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }