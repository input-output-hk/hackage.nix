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
      specVersion = "1.22";
      identifier = { name = "reformat"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2018 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/reformat";
      url = "";
      synopsis = "The parser and render to parsec and render the string.";
      description = "A frame work wih parser and render to reformat the key infors.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }