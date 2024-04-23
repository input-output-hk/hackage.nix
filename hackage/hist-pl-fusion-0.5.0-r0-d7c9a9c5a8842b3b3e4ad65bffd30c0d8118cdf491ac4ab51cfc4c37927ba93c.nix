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
      identifier = { name = "hist-pl-fusion"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/fusion";
      url = "";
      synopsis = "Merging historical dictionary with PoliMorf";
      description = "The library provides functions for merging historical dictionary\nwith PoliMorf morphological dictionary.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."dawg" or (errorHandler.buildDepError "dawg"))
          (hsPkgs."polimorf" or (errorHandler.buildDepError "polimorf"))
          (hsPkgs."hist-pl-dawg" or (errorHandler.buildDepError "hist-pl-dawg"))
          (hsPkgs."hist-pl-lexicon" or (errorHandler.buildDepError "hist-pl-lexicon"))
        ];
        buildable = true;
      };
    };
  }