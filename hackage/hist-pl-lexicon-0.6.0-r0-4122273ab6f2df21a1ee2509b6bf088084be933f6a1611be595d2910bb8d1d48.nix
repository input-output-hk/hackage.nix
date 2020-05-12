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
      identifier = { name = "hist-pl-lexicon"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/lexicon";
      url = "";
      synopsis = "A binary representation of the historical dictionary of Polish";
      description = "The library provides a binary representation of the historical\ndictionary of Polish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."dawg" or (errorHandler.buildDepError "dawg"))
          (hsPkgs."hist-pl-types" or (errorHandler.buildDepError "hist-pl-types"))
          (hsPkgs."hist-pl-dawg" or (errorHandler.buildDepError "hist-pl-dawg"))
          ];
        buildable = true;
        };
      };
    }