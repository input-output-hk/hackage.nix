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
      identifier = { name = "hist-pl"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/umbrella";
      url = "";
      synopsis = "Umbrella package for the historical dictionary of Polish";
      description = "The package provides a tool for creating and searching the\nhistorical dictionary of Polish.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hist-pl-lexicon" or (errorHandler.buildDepError "hist-pl-lexicon"))
          (hsPkgs."morfeusz" or (errorHandler.buildDepError "morfeusz"))
        ];
        buildable = true;
      };
      exes = {
        "hist-pl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."polimorf" or (errorHandler.buildDepError "polimorf"))
            (hsPkgs."hist-pl-lexicon" or (errorHandler.buildDepError "hist-pl-lexicon"))
            (hsPkgs."hist-pl-fusion" or (errorHandler.buildDepError "hist-pl-fusion"))
          ];
          buildable = true;
        };
      };
    };
  }