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
      specVersion = "2.4";
      identifier = { name = "typst-symbols"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright 2023 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/typst-symbols";
      url = "";
      synopsis = "Symbol and emoji lookup for typst language";
      description = "This package defines symbol and emoji codes for the\ntypst language (<https://typst.app>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }