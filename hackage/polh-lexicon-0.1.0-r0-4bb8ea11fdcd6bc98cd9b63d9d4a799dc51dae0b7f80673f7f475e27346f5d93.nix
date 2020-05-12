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
      identifier = { name = "polh-lexicon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/synat";
      url = "";
      synopsis = "Interface to a historical dictionary of Polish ";
      description = "Interface to a historical dictionary of Polish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."polysoup" or (errorHandler.buildDepError "polysoup"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "polh-binarize" = { buildable = true; };
        "polh-show" = { buildable = true; };
        };
      };
    }