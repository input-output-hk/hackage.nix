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
      identifier = { name = "pcre-less"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sreservoir@gmail.com";
      author = "sreservoir";
      homepage = "~";
      url = "";
      synopsis = "Nicer interface to regex-pcre";
      description = "Unfortunately, docs don't exist yet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }