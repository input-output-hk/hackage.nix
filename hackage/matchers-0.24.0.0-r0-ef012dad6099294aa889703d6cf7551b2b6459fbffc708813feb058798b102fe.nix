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
      specVersion = "1.8";
      identifier = { name = "matchers"; version = "0.24.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2011-2015 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/matchers";
      url = "";
      synopsis = "Text matchers";
      description = "Helpers for performing text matches.\nFor more information, please see the Github homepage at\n\n<http://www.github.com/massysett/matchers>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
        ];
        libs = [ (pkgs."pcre" or (errorHandler.sysDepError "pcre")) ];
        buildable = true;
      };
    };
  }