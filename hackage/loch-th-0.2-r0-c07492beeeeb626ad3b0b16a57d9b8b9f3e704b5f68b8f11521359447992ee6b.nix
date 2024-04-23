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
      specVersion = "1.2";
      identifier = { name = "loch-th"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tomi@nomi.cz";
      author = "Tomas Janousek";
      homepage = "https://github.com/liskin/loch-th";
      url = "";
      synopsis = "Support for precise error locations in source files (Template Haskell version)";
      description = "This module provides a Template Haskell based mechanism to\ntag failures with the location of the failure call. The\nlocation message includes the file name, line and column\nnumbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
        ];
        buildable = true;
      };
    };
  }